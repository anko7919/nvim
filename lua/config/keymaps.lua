local opts = { noremap = true, silent = true }

-- NORMAL MODE
-- nohlsearch
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

-- 画面分割してターミナルを表示
vim.keymap.set("n", "<leader>tr", ":vs | terminal<CR>", opts)
vim.keymap.set("n", "<leader>tb", ":sp | terminal<CR>", opts)

-- 画面分割してOil.nvimを起動
vim.keymap.set("n", "<leader>spo", "<cmd>sp<cr><cmd>Oil<cr>", opts)
vim.keymap.set("n", "<leader>vso", "<cmd>vs<cr><cmd>Oil<cr>", opts)

-- ウィンドウ移動
vim.keymap.set("n", "<c-h>", "<c-w>h", opts)
vim.keymap.set("n", "<c-j>", "<c-w>j", opts)
vim.keymap.set("n", "<c-k>", "<c-w>k", opts)
vim.keymap.set("n", "<c-l>", "<c-w>l", opts)

-- バッファ
vim.keymap.set("n", "<s-h>", "<cmd>bprevious<cr>", opts)
vim.keymap.set("n", "<s-l>", "<cmd>bnext<cr>", opts)
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", opts)

-- diagnostics表示
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)

-- INSERT MODE
-- Insert modeからNormal modeにもどる
vim.keymap.set("i", "jk", "<Esc>", opts)

-- TERMINAL MODE
-- 移動
vim.keymap.set("t", "jk", "<C-c><C-\\><C-n>", opts)

