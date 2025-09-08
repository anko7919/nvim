local opts = { noremap = true, silent = true }

-- NORMAL MODE
-- nohlsearch
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

-- 画面分割してターミナルを表示
vim.keymap.set("n", "<leader>t", ":vs | vertical resize 70 | terminal<CR>")

-- INSERT MODE
-- Insert modeからNormal modeにもどる
vim.keymap.set("i", "jk", "<Esc>", opts)

-- TERMINAL MODE
-- 移動
vim.keymap.set("t", "jk", "<C-c><C-\\><C-n>")

