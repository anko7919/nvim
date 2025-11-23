return {
    "mason-org/mason-lspconfig.nvim", 
    event = "VeryLazy", 
    opts = { 
        ensure_installed = {
            "rust_analyzer", 
            "clangd", 
            "pyright", 
            "cmake", 
            "julials", 
            "texlab", 
        }
    }, 
    dependencies = {
        { "mason-org/mason.nvim", opts = {} }, 
        "neovim/nvim-lspconfig", 
    }, 
    config = function()
        require("mason-lspconfig").setup({})
    end, 
}

