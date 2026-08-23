return {
    -- 括弧補完
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            local Rule = require("nvim-autopairs.rule")
            local npairs = require("nvim-autopairs")
            local cond = require("nvim-autopairs.conds")
            npairs.setup({
                check_ts = true,
            })
            npairs.add_rules({
                Rule("(", ")"):with_cr(cond.done()),
                Rule("{", "}"):with_cr(cond.done()),
                Rule("[", "]"):with_cr(cond.done()),
                Rule("\"", "\"", { "-tex", "-latex" })
                    :with_move(cond.after_text("\"")),
                Rule("'", "'", { "-tex", "-latex" })
                    :with_move(cond.after_text("'")),

                -- TeX
                Rule("$", "$", { "tex", "latex" })
                    :with_move(cond.after_text("$")),
                Rule("`", "'", { "tex", "latex" }),
                Rule("'", "", { "tex", "latex" }),
                Rule("\"", "", { "tex", "latex" }),

                -- C++
                Rule("/*", " */", { "c", "cpp" })
                    :with_cr(cond.none())
            })
        end,
    }
}

