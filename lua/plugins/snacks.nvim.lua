local math_quotes = {
    "La beauté d’une théorie ne réside pas dans son utilité, mais\ndans sa cohérence.",
}

-- Pick a random quote
local quote = math_quotes[math.random(#math_quotes)]

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
                        { icon = "* ", key = "n", desc = "New File", action = ":ene | startinsert" },
                        { icon = "* ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
                        { icon = "* ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                        { icon = "* ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                        { icon = "* ", key = "s", desc = "Edit Snippets", action = ":lua require('luasnip.loaders').edit_snippet_files()" },
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
                            title = quote,
                            gap = 1, 
                            padding = 2, 
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

