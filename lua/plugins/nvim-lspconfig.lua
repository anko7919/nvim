return {
    "neovim/nvim-lspconfig",
    event = "BufReadPost",
    config = function()
        local servers = {
            "bashls",
            "clangd",
            "cmake",
            "julials",
            "markdown_oxide",
            "pyright",
            "rust_analyzer",
            "texlab",
            "sagelsp",
        }
        for _, server in ipairs(servers) do
            vim.lsp.enable(server)
        end

        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(ev)
                local opts = { buffer = ev.buf }

                local default_lsp_keys = {
                    "gra",
                    "gri",
                    "grn",
                    "grr",
                    "grt",
                    "grx",
                    "gO",
                }
                for _, key in ipairs(default_lsp_keys) do
                    pcall(vim.keymap.del, "n", key, opts)
                end

                local kset = vim.keymap.set
                kset("n", "<leader>ld", vim.lsp.buf.definition, opts)
                kset("n", "<leader>li", vim.lsp.buf.implementation, opts)
                kset("n", "<leader>lt", vim.lsp.buf.type_definition, opts)
                kset("n", "<leader>lc", vim.lsp.codelens.run, opts)
                kset("n", "K", vim.lsp.buf.hover, opts)
            end,
        })
    end,
}

