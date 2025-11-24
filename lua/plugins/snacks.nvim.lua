return {
    {
        "folke/snacks.nvim", 
        priority = 1000, 
        lazy = false, 
        opts = {
            dashboard = {
                row = 10, 
                sections = {
                    {
                        section = "terminal", 
                        cmd = "chafa ~/.config/nvim/goch.png --format symbols --symbols=block --size=60x17 --stretch; sleep .1", 
                        height = 17, 
                        padding = 1, 
                    }, 
                    {
                        pane = 2, 
                        { section = "keys", gap = 1, padding = 1 }, 
                        { section = "startup" }, 
                    }
                }
            }
        }, 
        init = function()
            require("snacks").setup({})
        end, 
    }, 
}

