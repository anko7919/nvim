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
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch", "diff" },
                lualine_c = { "diagnostics" },
                lualine_x = { "encoding" },
                lualine_y = { "filetype" },
                lualine_z = { "lsp_status" },
            },
        }, 
    }
}

