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
                columns = {
                    --"icon", 
                    --"permissions", 
                    "size", 
                    "mtime", 
                },
                float = {
                    padding = 2,
                    max_width = 0.85,
                    max_height = 0.85,
                    border = "rounded",
                },
                keymaps = {
                    ["<CR>"] = "actions.select",
                    ["-"] = { "actions.parent", mode = "n" },
                    ["_"] = { "actions.open_cwd", mode = "n" },
                    ["q"] = { "actions.close", mode = "n" },
                    ["gd"] = { "actions.cd", mode = "n" },
                    ["g."] = { "actions.toggle_hidden", mode = "n" },
                    ["+"] = { callback = oil.save, mode = "n" },
                },
            })
        end, 
    }
}

