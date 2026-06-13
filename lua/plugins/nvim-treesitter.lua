return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local filetypes = {
            "bibtex",
            "c",
            "cmake",
            "cpp",
            "csv",
            "julia",
            "latex",
            "lua",
            "python",
            "racket",
            "rust",
            "yaml",
        }

        require("nvim-treesitter").install(filetypes)

        vim.api.nvim_create_autocmd("FileType", {
            pattern = filetypes,
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}

