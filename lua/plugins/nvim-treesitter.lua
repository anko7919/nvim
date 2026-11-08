return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            "bash",
            "bibtex",
            "c",
            "cmake",
            "cpp",
            "julia",
            "latex",
            "lua",
            "python",
            "regex",
        })

        local filetypes = {
            "bash",
            "bibtex",
            "c",
            "cmake",
            "cpp",
            "julia",
            "latex",
            "lua",
            "python",
            "regex",
            "sage",
        }

        vim.filetype.add({
            extension = {
                sage = "sage",
            }
        })
        vim.treesitter.language.register("python", "sage")
        vim.api.nvim_create_autocmd("FileType", {
            pattern = filetypes,
            callback = function()
                vim.treesitter.start()
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}

