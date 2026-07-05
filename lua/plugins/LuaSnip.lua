return {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    version = "v2.*",
    run = "make install_jsregexp",
    config = function()
        print("LuaSnip config")
        local ls = require("luasnip")

        -- 選択や移動
        local keymap_opt = { silent = true }
        vim.keymap.set("i", "<c-k>", function() print("foo! LuaSnip") ls.expand() end, keymap_opt)
        vim.keymap.set({ "i", "s", }, "<c-l>", function() ls.jump( 1) end, keymap_opt)
        vim.keymap.set({ "i", "s", }, "<c-h>", function() ls.jump(-1) end, keymap_opt)
        vim.keymap.set({ "i", "s" }, "<c-e>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, keymap_opt)

        ls.config.set_config({
            history = true, --履歴保持
            updateevents = "TextChanged,TextChangedI", -- functionNodeなどの再計算
        })

        require("luasnip.loaders.from_lua").load({ paths = vim.fn.stdpath("config") .. "/snippets/" })
    end,
}

