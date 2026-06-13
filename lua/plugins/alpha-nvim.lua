return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-mini/mini.icons" },
    lazy = false,
    config = function()
        local alpha = require("alpha")
        require("alpha.term")
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.buttons.val = {
            dashboard.button("f", "Find files", "<cmd>Telescope find_files<cr>"),
            dashboard.button("r", "Recent files", "<cmd>Telescope oldfiles<cr>"),
            dashboard.button("l", "Lazy", "<cmd>Lazy<cr>"),
            dashboard.button("q", "Quit", "<cmd>qa<cr>"),
        }
        dashboard.section.terminal = {
            type = "terminal",
            command = "chafa ~/.config/nvim/goch.png --format symbols --symbols=block --size=47x14 --stretch; sleep .1",
            width = 47,
            height = 14,
            opts = {
                redraw = true,
                window_config = {},
            },
        }
        dashboard.config.layout = {
            { type = "padding", val = 1 },
            dashboard.section.terminal,
            { type = "padding", val = 1 },
            dashboard.section.buttons
        }
        alpha.setup(dashboard.config)
    end
}

