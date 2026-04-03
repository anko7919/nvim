vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.termguicolors = true

-- 検索
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.incsearch = true
vim.opt.hlsearch = true

-- スクロール
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 25

-- クリップボード
vim.opt.clipboard = "unnamedplus" -- システムクリップボード共有

-- 分割ウィンドウ
vim.opt.splitbelow = true
vim.opt.splitright = true

-- カラー
vim.opt.cursorline = true

-- undo永続化
vim.opt.undofile = true

-- update時間
vim.opt.updatetime = 250

-- キーマップなどの待ち時間
vim.opt.timeoutlen = 400

-- LSPなどによる左右ズレ防止
vim.opt.signcolumn = "yes"

-- 長い行の可視化
vim.opt.colorcolumn = "100"
