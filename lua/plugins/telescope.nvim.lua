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
            { "<leader>fr", require("telescope.builtin").old_files, mode = { "n" }, desc = "Recent files" },

            -- LSP
            { "<leader>sr", require("telescope.builtin").lsp_references, mode = { "n" }, desc = "Lists LSP references", },
            { "<leader>sD", require("telescope.builtin").diagnostics, mode = { "n" }, desc = "Lists Diagnostics", },
            { "<leader>si", require("telescope.builtin").lsp_implementations, mode = { "n" }, desc = "Goto the implementation", },
            { "<leader>sd", require("telescope.builtin").lsp_definitions, mode = { "n" }, desc = "Goto the definition", },
            { "<leader>st", require("telescope.builtin").lsp_type_definitions, mode = { "n" }, desc = "Go to Type definition", },
            
            -- バッファ
            { "<leader>bl", require("telescope.builtin").buffers, mode = { "n" }, desc = "Lists open buffers", },

            -- Git
            { "<leader>gB", require("telescope.builtin").git_branches, mode = { "n" }, desc = "Lists all branches", },
            { "<leader>gs", require("telescope.builtin").git_status, mode = { "n" }, desc = "Git Status" },
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

