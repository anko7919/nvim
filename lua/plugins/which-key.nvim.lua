return {
    {
        "folke/which-key.nvim", 
        event = "VeryLazy", 
        config = function()
            local wk = require("which-key")
            wk.setup()
            wk.add({
                { "<leader>f", group = "Telescope File" }, 
                { "<leader>ff", desc = "Find File", mode = "n" }, 
                { "<leader>fg", desc = "Live Grep", mode = "n" }, 
                { "<leader>fb", desc = "Buffer", mode = "n" }, 
                { "<leader>fr", desc = "Recent File", mode = "n" }, 

                { "<leader>t", group = "Terminal" }, 
                { "<leader>tr", desc = "Right", mode = "n" }, 
                { "<leader>tb", desc = "Below", mode = "n" }, 

                { "ds", group = "VimTex Delete" }, 
                { "dse", desc = "Delete Environment", mode = "n" }, 
                { "dsc", desc = "Delete Command", mode = "n" }, 
                { "dsd", desc = "Delete Delimiter", mode = "n" }, 
                { "ds$", desc = "Delete Math", mode = "n" }, 

                { "cs", group = "VimTex Change"}, 
                { "csc", desc = "Change Environment", mode = "n" }, 
                { "cse", desc = "Change Entironment", mode = "n" }, 
                { "csd", desc = "Change Delimiter", mode = "n" }, 
                { "cs$", desc = "Change Math", mode = "n" }, 
            })
        end, 
    }
}

