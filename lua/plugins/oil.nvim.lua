return {
    {
        "stevearc/oil.nvim",
        ---@module "oil"
        ---@type oil.SetupOpts
        opts = {},
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        cmd = { "Oil" },
        keys = {
            { "-", "<cmd>Oil --float<cr>", mode = "n", desc = "Open Oil.nvim" },
        },
        config = function()
            local oil = require("oil")
            oil.setup({
                delete_on_trash = true,
                default_file_explorer = true,
                watch_for_changes = true,
                columns = {},
                float = {
                    padding = 2,
                    max_width = 0.85,
                    max_height = 0.85,
                    border = "rounded",
                },
                lsp_file_methods = {
                    enabled = true,
                    timeout_ms = 1000,
                    autosave_changes = false,
                },
                keymaps = {
                    ["<CR>"] = "actions.select",
                    ["-"] = { "actions.parent", mode = "n" },
                    ["_"] = { "actions.open_cwd", mode = "n" },
                    ["q"] = { "actions.close", mode = "n" },
                    ["gd"] = { "actions.cd", mode = "n" },
                    ["gs"] = { "actions.change_sort", mode = "n" },
                    ["g."] = { "actions.toggle_hidden", mode = "n" },
                    ["+"] = { callback = oil.save, mode = "n" },
                },
            })
        end,
    }
}

