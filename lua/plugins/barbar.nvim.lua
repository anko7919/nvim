return {
    "romgrk/barbar.nvim",
    event = "BufReadPre",
    dependencies = {
        "lewis6991/gitsigns.nvim",
    },
    keys = {
        { "<a-h>", "<cmd>BufferPrevious<cr>", mode = "n", },
        { "<a-l>", "<cmd>BufferNext<cr>", mode = "n", },
        { "<a-,>", "<cmd>BufferMoveNext<cr>", mode = "n", },
        { "<a-.>", "<cmd>BufferMovePrevious<cr>", mode = "n", },
        { "<a-c>", "<cmd>BufferClose<cr>", mode = "n", },
        { "<a-C>", "<cmd>BufferCloseAllButCurrent<cr>", mode = "n", },
    },
    opts = {
        animation = false,
        hide = { current = false, alternate = true, },
        icons = { 
            button = "x",
            filetype = { enabled = false, },
            preset = "slanted",
            modified = { button = "*" },
            gitsigns = {
                added = { enable = true, icon = "+" },
                changed = { enable = true, icon = "~" },
                deleted = { enable = true, icon = "-" },
            },
        },
    },
}

