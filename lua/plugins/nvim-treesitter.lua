return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            "bash",
            "bibtex",
            "c",
            "cmake",
            "cpp",
            "julia",
            "latex",
            "lua",
            "python",
            "regex",
        })
    end,
}

