return {
    {
        "stevearc/oil.nvim", 
        ---@module "oil"
        ---@type oil.SetupOpts
        opts = {}, 
        dependencies = { { "nvim-mini/mini.icons", opts = {} } }, 
        cmd = { "Oil" },
        keys = {
            { ";", "<cmd>Oil --float<cr>", mode = "n", desc = "Open Oil.nvim" }, 
        }, 
        config = function()
            require("oil").setup({
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
                },
            })
        end, 
    }
}

