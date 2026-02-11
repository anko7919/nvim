return {
    {
        "stevearc/oil.nvim", 
        ---@module "oil"
        ---@type oil.SetupOpts
        opts = {}, 
        dependencies = { { "nvim-mini/mini.icons", opts = {} } }, 
        cmd = { "Oil" },
        keys = {
            { ";", "<cmd>Oil<cr>", mode = "n", desc = "Open Oil.nvim" }, 
        }, 
        config = function()
            require("oil").setup({
                columns = {
                    "icon", 
                    "permissions", 
                    -- "size", 
                    -- "mtime", 
                }
            })
        end, 
    }
}

