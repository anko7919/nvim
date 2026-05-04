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
                Rule("\"", "\""):with_move(cond.after_text("\"")),
                Rule("'", "'", "-tex"):with_move(cond.after_text("'")),

                -- TeX
                Rule("$", "$", "tex"):with_move(cond.after_text("$")),
                Rule("`", "'", "tex"),
                -- \left(\right) のような括弧
                Rule("\\%w+[%[%(]$", "", "tex")
                    :use_regex(true)
                    :replace_endpair(function(opts)
                        local ret = "\\"
                        local baskslash_pos = opts.prev_char:match(".*()\\")
                        if baskslash_pos == nil then
                            return ""
                        end
                        local sizestr = string.sub(opts.prev_char, baskslash_pos + 1, -2)
                        -- ここでは"(" (resp. "[") が自動で補完されることを前提としているので
                        -- あえて")" (resp. "]") を追加していない．
                        if sizestr == "left" then
                            return ret .. "right"
                        else
                            return ret .. sizestr
                        end
                    end),

                -- Bash
                Rule("then%s*", "fi", { "bash", "sh" }):use_regex(true):end_wise(function(opts)
                    return string.match(opts.line, "^%s*if") ~= nil
                end),
                Rule("do%s*", "done", { "bash", "sh" }):use_regex(true):end_wise(function(opts)
                    return string.match(opts.line, "^%s*for") ~= nil
                            or string.match(opts.line, "^%s*while") ~= nil
                end),
            })
        end,
    }
}

