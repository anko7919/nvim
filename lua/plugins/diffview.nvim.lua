return {
    "sindrets/diffview.nvim",
    keys = {
        { "<leader>do", "<cmd>DiffviewOpen<cr>", mode = "n", desc = "open a new diffview" },
        { "<leader>dq", "<cmd>DiffviewClose<cr>", mode = "n", desc = "close the current diffview" },
    },
    opts = {
        use_icons = false,
    },
}

