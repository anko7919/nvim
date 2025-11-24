return {
    {
        "folke/snacks.nvim", 
        priority = 1000, 
        lazy = false, 
        opts = {
            dashboard = {
                header = { "NeoVim", "v0.11.5" }, 
                footer = { "v0.11.5" }, 
                sections = {
                    {
                        {
                            section = "header", 
                        }, 
                        {
                            section = "terminal", 
                            cmd = "chafa ~/.config/nvim/goch.png --format symbols --symbols=block --size=60x17 --stretch; sleep .1", 
                            height = 17, 
                            padding = 1, 
                        }, 
                        -- {
                            -- section = "footer", 
                        -- }, 
                    }, 
                    {
                        pane = 2, 
                        { 
                            section = "keys", 
                            gap = 1, 
                            padding = 1, 
                            title = "Keymaps", 
                        }, 
                        { 
                            section = "recent_files", 
                            title = "Recent Files", 
                            indent = 2, 
                            padding = 1, 
                        }, 
                        {
                            section = "startup", 
                        }, 
                    }
                }
            }
        }, 
        init = function()
            require("snacks").setup({})
        end, 
    }, 
}

