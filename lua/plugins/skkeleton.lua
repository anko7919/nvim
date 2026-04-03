return {
    "vim-skk/skkeleton",
    lazy = true,
    event = "InsertEnter",
    dependencies = {
        "vim-denops/denops.vim",
    },
    keys = {
        { "<C-j>", "<Plug>(skkeleton-enable)", mode = { "i", "c", "t", } },
    },
    config = function()
        vim.cmd("call skkeleton#config({ 'globalDictionaries': [['~/.skk/SKK-JISYO.L', 'euc-jp']] })")
    end,
}

