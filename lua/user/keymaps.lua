local opts = { noremap = true, silent = true }

-- NORMAL MODE
-- nohlsearch
vim.keymap.set("n", "<Esc><Esc>", ":nohlsearch<CR>", opts)

-- INSERT MODE
-- Insert modeからNormal modeにもどる
vim.keymap.set("i", "jk", "<Esc>", opts)

-- 括弧
-- vim.keymap.set("i", "(", "()<Left>", opts)
-- vim.keymap.set("i", "[", "[]<Left>", opts)
-- vim.keymap.set("i", "{", "{}<Left>", opts)

