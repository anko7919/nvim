return {
    "mason-org/mason-lspconfig.nvim", 
    lazy = false,
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
}

