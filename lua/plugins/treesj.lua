return {
    "Wansmer/treesj",
    keys = { "M" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
        vim.keymap.set("n", "M", require("treesj").toggle)
    end,
}

