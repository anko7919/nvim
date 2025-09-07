-- Lazy.nvimをインストール
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then 
    vim.fn.system({
        "git", 
        "clone", 
        "--filter=blob:none", 
        "https://github.com/folke/lazy.nvim.git", 
        "--branch=stable", 
        lazypath, 
    })
end
vim.opt.rtp:prepend(lazypath)

-- PLUGINS
require("lazy").setup({
    -- color scheme
    {
        "cocopon/iceberg.vim", 
        lazy = false, 
        priority = 1000, 
        config = function()
            vim.cmd("colorscheme iceberg")
        end, 
    }, 

    -- 括弧補間
    {
        "windwp/nvim-autopairs", 
        event = "InsertEnter", 
        config = true, 
    }, 

    -- 探索
    {
        "nvim-telescope/telescope.nvim", 
        dependencies = { "nvim-lua/plenary.nvim" }, 
        lazy = false, 
        config = function()
            local builtin = require("telescope.builtin")
            local opts = { noremap = true, silent = true }

            -- キーマップ設定
            vim.keymap.set("n", "<leader>ff", builtin.fild_files, opts) -- ファイル検索
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)  -- テキスト検索
            vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)    -- バッファ検索
            vim.keymap.set("n", "<leader>fr", builtin.oldfiles, opts)   -- 最近開いたファイル
        end, 
    }, 
})

