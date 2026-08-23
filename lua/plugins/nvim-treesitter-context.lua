return {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = false,
    event = "BufReadPre",
    opts = {
        enable = false,
        multiwindow = true,
        max_lines = 2,
        min_window_height = 20,
        line_numbers = true,
        trim_scope = "outer",
        mode = "cursor",
        separator = nil,
    }
}

