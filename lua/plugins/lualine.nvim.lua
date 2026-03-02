return {
    {
        "nvim-lualine/lualine.nvim", 
        dependencies = { "nvim-tree/nvim-web-devicons" }, 
        lazy = false, 
        opts = {
            winbar = {
                lualine_c = {
                    {
                        "navic",
                        color_correction = "static",
                        navic_opts = nil,
                    },
                },
            },
        }, 
    }
}

