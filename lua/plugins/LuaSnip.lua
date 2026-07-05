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
        vim.keymap.set({ "i", "s", }, "<C-h>", function() ls.jump(-1) end, keymap_opt)

        ls.config.set_config({
            history = true, --履歴保持
            updateevents = "TextChanged,TextChangedI", -- functionNodeなどの再計算
        })

        require("luasnip.loaders.from_lua").load("~/.config/nvim/lua/snippets/")
    end,
}

