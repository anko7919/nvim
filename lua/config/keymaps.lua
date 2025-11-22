local opts = { noremap = true, silent = true }

-- NORMAL MODE
-- nohlsearch
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

-- 画面分割してターミナルを表示
vim.keymap.set("n", "<leader>tr", ":vs | vertical resize 70 | terminal<CR>", opts)
vim.keymap.set("n", "<leader>tb", ":sp | resize 10 | terminal<CR>", opts)

-- INSERT MODE
-- Insert modeからNormal modeにもどる
vim.keymap.set("i", "jk", "<Esc>", opts)

-- TERMINAL MODE
-- 移動
vim.keymap.set("t", "jk", "<C-c><C-\\><C-n>")

