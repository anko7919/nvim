return {
    {
        "folke/snacks.nvim", 
        priority = 1000, 
        lazy = false, 
        opts = {
            dashboard = {
                padding_top = 5, 
                padding_bottom = 5, 
                row = nil, 
                col = nil, 
                pane_gap = 3, 
                preset = {
                    ---@type snacks.dashboard.Item[]
                    keys = {
                        { icon = "* ", key = "f", desc = "Find File", action = ":Telescope find_files" },
                        { icon = "* ", key = "p", desc = "Projects", action = ":lua Snacks.dashboard.pick('projects')" },
                        { icon = "* ", key = "s", desc = "Restore Session", action = ":lua Snacks.dashboard.pick('sessions')" },
                        { icon = "* ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                        { icon = "* ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
                        { icon = "* ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                        { icon = "* ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                        { icon = "* ", key = "q", desc = "Quit", action = ":qa" },
                    },
                },
                sections = {
                    {
                        {
                            section = "header",
                            padding = 1,
                        },
                        {
                            section = "terminal", 
                            cmd = "chafa ~/.config/nvim/goch.png --format symbols --symbols=block --size=60x17 --stretch; sleep .1", 
                            height = 17, 
                            padding = 2, 
                        }, 
                        {
                            section = "startup", 
                            padding = 1,
                        }, 
                    }, 
                    {
                        pane = 2, 
                        {
                            section = "terminal",
                            cmd = "cmatrix -rb -u15",
                            height = 6,
                            padding = 1,
                        },
                        { 
                            section = "keys", 
                            gap = 1, 
                            padding = 4, 
                            indent = 1, 
                            item = keys,
                        }, 
                        {
                            section = "terminal",
                            cmd = "nvim --version | head -n1",
                            height = 1,
                            indent = 23,
                        },
                    }
                }
            }
        }, 
    }, 
}

