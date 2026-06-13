return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre" },
    dependencies = {
        "mason.nvim",
        { "mason-org/mason-lspconfig.nvim", config = function() end },
        "folke/lazydev.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    opts = function()
        local colors = {
            error = vim.api.nvim_get_hl(0, { name = "DiagnosticError" }),
            warn = vim.api.nvim_get_hl(0, { name = "DiagnosticWarn" }),
            hint = vim.api.nvim_get_hl(0, { name = "DiagnosticHint" }),
            info = vim.api.nvim_get_hl(0, { name = "DiagnosticInfo" }),
        }
        local ret = {
            diagnostics = {
                underline = true,
                update_in_insert = false,
            },
            severity_sort = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = colors.error,
                    [vim.diagnostic.severity.WARN] = colors.warn,
                    [vim.diagnostic.severity.HINT] = colors.hint,
                    [vim.diagnostic.severity.INFO] = colors.info,
                },
            },
            inlay_hints = {
                enabled = true,
            },

            servers = {
                ["clangd"] = require("plugins.lsp.clangd"),
                ["cmake"] = require("plugins.lsp.cmake"),
                ["julials"] = require("plugins.lsp.julials"),
                ["pyright"] = require("plugins.lsp.pyright"),
                ["rust_analyzer"] = require("plugins.lsp.rust_analyzer"),
                ["texlab"] = require("plugins.lsp.texlab"),
            },

            keys = {
                { "gd", vim.lsp.buf.definition, desc = "Goto Definition", has = "definition" },
                { "gr", vim.lsp.buf.references, desc = "References", nowait = true },
                { "K", function() return vim.lsp.buf.hover() end, desc = "Hover" },
                { "<c-k>", function() return vim.lsp.buf.signature_help() end, mode = "i", desc = "Signature Help", has = "signatureHelp" },
                { "<leader>ca", vim.lsp.buf.code_action, desc = "Code Action", mode = { "n", "x" }, has = "codeAction" },
                { "<leader>cr", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
            },
        }
        return ret
    end,

    config = function(_, opts)
        -- Luaはlazydev.nvimが設定してくれるので別で設定
        vim.lsp.enable("lua_ls")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        for server, server_opts in pairs(opts.servers) do
            server_opts.capabilities = capabilities
            vim.lsp.config(server, server_opts)
            vim.lsp.enable(server)
        end
    end,
}

