local opts = { noremap = true, silent = true }

-- NORMAL MODE
-- nohlsearch
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

-- 画面分割してターミナルを表示
vim.keymap.set("n", "<leader>tr", ":vs | terminal<CR>", opts)
vim.keymap.set("n", "<leader>tb", ":sp | terminal<CR>", opts)

-- 画面分割してOil.nvimを起動
vim.keymap.set("n", "<leader>spo", "<cmd>sp<cr><cmd>Oil<cr>")
vim.keymap.set("n", "<leader>vso", "<cmd>vs<cr><cmd>Oil<cr>")

-- ウィンドウ移動
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-j>", "<c-w>j")
vim.keymap.set("n", "<c-k>", "<c-w>k")
vim.keymap.set("n", "<c-l>", "<c-w>l")

-- バッファ移動
vim.keymap.set("n", "<s-h>", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<s-l>", "<cmd>bnext<cr>")

-- INSERT MODE
-- Insert modeからNormal modeにもどる
vim.keymap.set("i", "jk", "<Esc>", opts)

-- TERMINAL MODE
-- 移動
vim.keymap.set("t", "jk", "<C-c><C-\\><C-n>")

