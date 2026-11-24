return {
    "saghen/blink.cmp",
    event = "InsertEnter",
    version = "1.*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        keymap = {
            preset = "default",
            ["<c-cr>"] = { function(cmp) cmp.accept({ index = 1 }) end },
        },
        completion = { documentation = { auto_show = false } },
        sources = {
            default = { "lazydev", "lsp", "path", "buffer", "snippets" },
            providers = {
                lazydev = {
                    name = "LazyDev",
                    module = "lazydev.integrations.blink",
                    -- make lazydev completions top priority (see `:h blink.cmp`)
                    score_offset = 100,
                },
            },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
    },
}

