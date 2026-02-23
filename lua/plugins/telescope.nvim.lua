return {
    {
        "nvim-telescope/telescope.nvim", 
        dependencies = { 
            "nvim-lua/plenary.nvim",
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make", },
        }, 
        lazy = false, 
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", mode = { "n" }, desc = "Find files" }, 
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", mode = { "n" }, desc = "Telescope live grep" }, 
            { "<leader>fb", "<cmd>Telescope buffers<cr>", mode = { "n" }, desc = "Telescope buffers" }, 
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", mode = { "n" }, desc = "Telescope help tags" }, 

            { "<leader>sr", "<cmd>Telescope lsp_references<cr>", mode = { "n" }, desc = "Lists LSP references", },
            { "<leader>sD", "<cmd>Telescope diagnostics<cr>", mode = { "n" }, desc = "Lists Diagnostics", },
            { "<leader>si", "<cmd>Telescope lsp_implementations<cr>", mode = { "n" }, desc = "Goto the implementation", },
            { "<leader>sd", "<cmd>Telescope lsp_definitions<cr>", mode = { "n" }, desc = "Goto the definition", },
            
            { "<leader>bl", "<cmd>Telescope buffers<cr>", mode = { "n" }, desc = "Lists open buffers", },
        }
    }
}

