return {
    "nvim-lualine/lualine.nvim", 
    dependencies = { "nvim-tree/nvim-web-devicons" }, 
    events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
    },
    opts = {
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diff" },
            lualine_c = { "diagnostics" },
            lualine_x = { function() return "🕑 " .. os.date("%H:%M") end, },
            lualine_y = {},
            lualine_z = {},
        },
    }, 
}

