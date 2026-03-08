return {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    opts = {
        enable = true,
        multiwindow = true,
        max_lines = 2,
        min_window_height = 20,
        line_numbers = true,
        trim_scope = "outer",
        mode = "cursor",
        separator = nil,
    }
}

