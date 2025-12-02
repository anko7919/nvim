return {
    {
        "folke/snacks.nvim", 
        priority = 1000, 
        lazy = false, 
        opts = {
            dashboard = {
                header = { "NeoVim" }, 
                padding_top = 5, 
                padding_bottom = 5, 
                row = nil, 
                col = nil, 
                pane_gap = 4, 
                sections = {
                    {
                        {
                            section = "header", 
                            padding = 2, 
                        }, 
                        {
                            section = "terminal", 
                            cmd = "chafa ~/.config/nvim/goch.png --format symbols --symbols=block --size=60x17 --stretch; sleep .1", 
                            height = 17, 
                            padding = 1, 
                        }, 
                        {
                            section = "startup", 
                            padding = 1, 
                        }, 
                    }, 
                    {
                        pane = 2, 
                        { 
                            section = "keys", 
                            gap = 1, 
                            padding = 1, 
                            indent = 2, 
                        }, 
                        { 
                            section = "terminal",  
                            title = "Git Status", 
                            cmd = "git status --short --branch --renames", 
                            indent = 2, 
                            padding = 1, 
                        }, 
                    }
                }
            }
        }, 
    }, 
}

