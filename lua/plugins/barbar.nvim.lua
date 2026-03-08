return {
    "romgrk/barbar.nvim",
    event = "BufReadPre",
    dependencies = {
        "lewis6991/gitsigns.nvim",
    },
    keys = {
        { "H", "<cmd>BufferPrevious<cr>", mode = "n", },
        { "L", "<cmd>BufferNext<cr>", mode = "n", },
    },
    opts = {
        animation = false,
        hide = { current = false, alternate = true, },
        icons = { 
            button = "x",
            filetype = { enabled = false, },
            preset = "slanted",
            modified = { button = "*" },
            gitsigns = { enabled = false, },
        },
    },
}

