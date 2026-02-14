return {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    version = "v2.*",
    run = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")

        -- 選択や移動
        local keymap_opt = { silent = true, }
        vim.keymap.set({ "i", }, "<C-k>", function() ls.expand() end, keymap_opt)
        vim.keymap.set({ "i", "s", }, "<C-l>", function() ls.jump( 1) end, keymap_opt)
        vim.keymap.set({ "i", "s", }, "<C-j>", function() ls.jump(-1) end, keymap_opt)

        -- <leader>snでスニペット編集メニューを表示
        vim.keymap.set("n", "<leader>sn", require("luasnip.loaders").edit_snippet_files, { desc = "Edit Snippets" })

        require("luasnip.loaders.from_lua").load()
    end,
}

