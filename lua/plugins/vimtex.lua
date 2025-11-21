return {
    {
        "lervag/vimtex", 
        lazy = false, 
        init = function()
            vim.g.vimtex_view_method = "general"
            vim.g.vimtex_fold_enabled = false
            vim.g.vimtex_format_enabled = true
            vim.g.vimtex_view_general_viewer = "/mnt/c/Users/haupt/AppData/Local/SumatraPDF/SumatraPDF.exe"
        end, 
    }
}

