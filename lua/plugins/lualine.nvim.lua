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
        options = {
            icons_enabled = false,
            theme = "iceberg",
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch" },
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
                    sources = { "nvim_lsp", "nvim_diagnostic" },
                    sections = { "error", "warn" },
                    symbols = { error = "E", warn = "W", info = "I", hint = "H" },
                    colored = true,
                    update_in_insert = false,
                    always_visible = false,
                },
            },
            lualine_y = {},
            lualine_z = {},
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { "filename" },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        }
    },
}

