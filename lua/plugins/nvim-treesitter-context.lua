return {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPost",
    opts = {
        enable = true,
        multiwindow = true,
        trim_scope = "outer",
    }
}

