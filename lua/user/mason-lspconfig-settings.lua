local lspconfig = require("lspconfig")

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "cpp", }, 
    callback = function()
        if not lspconfig.clangd.manager then
            lspconfig.clangd.setup({
                cmd = { "clangd" }, 
                filetypes = { "c", "cpp", }, 
                root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"), 
                capabilities = require("cmp_nvim_lsp").default_capabilities(), 
            })
        end
        vim.cmd("LspStart clangd")
    end, 
})

