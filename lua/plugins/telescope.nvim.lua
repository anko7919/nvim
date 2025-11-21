return {
    {
        "nvim-telescope/telescope.nvim", 
        dependencies = { "nvim-lua/plenary.nvim" }, 
        lazy = false, 
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", mode = { "n" }, desc = "Find files" }, 
            { "<leader>fg", "<cmd>Telescope live_grep", mode = { "n" }, desc = "Telescope live grep" }, 
            { "<leader>fb", "<cmd>Telescope buffers", mode = { "n" }, desc = "Telescope buffers" }, 
            { "<leader>fh", "<cmd>Telescope help_tags", mode = { "n" }, desc = "Telescope help tags" }, 
        }
    }
}

