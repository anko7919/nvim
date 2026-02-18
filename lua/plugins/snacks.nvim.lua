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
                width = 48,
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
                            section = "terminal", 
                            cmd = "chafa ~/.config/nvim/goch.png --format symbols --symbols=block --size=47x14 --stretch; sleep .1", 
                            height = 14, 
                            padding = 1, 
                        }, 
                        {
                            section = "startup", 
                        }, 
                    }, 
                    {
                        pane = 2, 
                        {
                            section = "terminal",
                            cmd = "cmatrix -rb -u18",
                            height = 5,
                            padding = 1,
                        },
                        { 
                            section = "keys", 
                            padding = 1, 
                            item = keys,
                        }, 
                        {
                            section = "terminal",
                            cmd = "nvim --version | head -n1",
                            height = 1,
                            indent = 17,
                        },
                    }
                }
            }
        }, 
    }, 
}

