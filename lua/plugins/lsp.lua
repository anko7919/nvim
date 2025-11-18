return {
    "mason-org/mason-lspconfig.nvim", 
    dependencies = { { "mason-org/mason.nvim", opts = {} }, 
                    "neovim/nvim-lspconfig" }, 
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "rust_analyzer", "clangd" }, 
            automatic_installation = true, 
        })

        local lspconfig = require("lspconfig")
        local util = require("lspconfig/util")

        -- 共通設定 (on_attach, capabilitiesなど)
        local on_attach = function(_, bufnr)
            local opts = { buffer = bufnr, noremap = true, silent = true }
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        end

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Rust用設定
        lspconfig.rust_analyzer.setup({
            on_attach = on_attach, 
            capabilities = capabilities, 
            settings = {
                ["rust-analyzer"] = {
                    cargo = { allFeatures = true }, 
                    checkOnSave = true, 
                }, 
            },
        })

        -- C/C++用設定
        lspconfig.clangd.setup({
            capabilities = capabilities, 
            cmd = { 
                "clangd", 
                "--compile-commands-dir=" .. vim.env.CLANGD_CONFIG_PATH, 
                "--clang-tidy", 
            }, 
            filetypes = { "c", "cpp" }, 
        })
    end, 
}

