return {
    "saghen/blink.cmp",
    event = "InsertEnter",
    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "default",
            ["<c-y>"] = { function(cmp) cmp.accept({ index = 1 }) end },
        },
        completion = { documentation = { auto_show = false } },
        sources = {
            default = { "lsp", "path", "buffer", "snippets" },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
}

