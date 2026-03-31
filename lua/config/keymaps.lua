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

-- 行頭・行末に移動
vim.keymap.set("n", "<space>h", "^")
vim.keymap.set("n", "<space>l", "$")

-- INSERT MODE
-- Insert modeからNormal modeにもどる
vim.keymap.set("i", "jk", "<Esc>", opts)

-- TERMINAL MODE
-- 移動
vim.keymap.set("t", "jk", "<C-c><C-\\><C-n>")

