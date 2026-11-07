return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make", },
        },
        lazy = false,
        keys = {
            -- 検索
            { "<leader>ff", require("telescope.builtin").find_files, mode = { "n" }, desc = "Find files" },
            { "<leader>fg", require("telescope.builtin").live_grep, mode = { "n" }, desc = "Telescope live grep" },
            { "<leader>fG", require("telescope.builtin").grep_string, mode = { "n" }, desc = "Search for Cursor string"},
            { "<leader>fr", require("telescope.builtin").oldfiles, mode = { "n" }, desc = "Recent files" },

            -- バッファ
            { "<leader>bl", require("telescope.builtin").buffers, mode = { "n" }, desc = "Lists open buffers", },
        },
        opts = {
            defaults = {
                layout_strategy = "vertical",
                layout_config = {
                    vertical = { width = 80, },
                },
            },
        },
    }
}

