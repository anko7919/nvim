return {
    "neovim/nvim-lspconfig", 
    event = { "BufReadPre" }, 
    dependencies = {
        "mason.nvim", 
        { "mason-org/mason-lspconfig.nvim", config = function() end }, 
        "LazyVim",
    }, 
    opts = function()
        local ret = {
            diagnostics = {
                underline = true, 
                update_in_insert = false, 
            }, 
            severity_sort = true, 
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error, 
                    [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn, 
                    [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint, 
                    [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info, 
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
        for server, server_opts in pairs(opts.servers) do 
            vim.lsp.config(server, server_opts)
            vim.lsp.enable(server)
        end
    end, 
}

