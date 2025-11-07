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

-- ファイル分割読み込み
require("settings")
require("keymaps")
require("indents")

require("lazy").setup("plugins")

