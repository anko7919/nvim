return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        ts = require("nvim-treesitter")
        local filetypes = { "cpp", "c", "julia", "tex", }
        ts.install(filetypes)
    end,
}

