return {
    "nvim-lualine/lualine.nvim", 
    dependencies = { { "nvim-mini/mini.icons", opts = {} } }, 
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
            lualine_b = {
                "branch",
            },
            lualine_c = {
                {
                    "filename",
                    file_status = true,
                    newfile_status = false,
                    path = 0,
                    symbols = {
                        modified = "[+]",
                        readonly = "[-]",
                        unnamed = "[No Name]",
                        newfile = "[New]",
                    }
                }
            },
            lualine_x = { 
                {
                    "diagnostics",
                    sources = { "nvim_lsp", "vim_lsp" },
                    sections = { "error", "warn" },
                    symbols = { error = "E", warn = "W", info = "I", hint = "H" },
                    always_visible = false,
                },
            },
            lualine_y = {
                "diff",
                function() return "🕑 " .. os.date("%H:%M") end,
            },
            lualine_z = { "progress" },
        },
    }, 
}

