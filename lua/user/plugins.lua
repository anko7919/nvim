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

-- color scheme
require("lazy").setup({
    {
        "cocopon/iceberg.vim", 
        lazy = false, 
        priority = 1000, 
        config = function()
            vim.cmd("colorscheme iceberg")
        end, 
    }, 
})

-- 括弧補間
require("lazy").setup({
    {
        "windwp/nvim-autopairs", 
        event = "InsertEnter", 
        config = true, 
    }, 
})

