return {
    "SmiteshP/nvim-navic",
    lazy = false, -- LSPで使うため
    opts = {
        icons = { enabled = false, },
        lsp = {
            auto_attach = true,
            highlight = true,
            depth_limit = 3,
            preference = {
                "clangd",
                "texlab",
                "rust-analyzer",
                "cmake",
                "julials",
                "pyright",
            },
        },
    },
}

