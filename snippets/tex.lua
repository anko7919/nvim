local u = require("luasnip_utils")
local s = u.s
local t = u.t
local i = u.i
local c = u.c

return {
    s("init", {
        t("\\documentclass{"),
        c(count_template_index(), {
            t("dorayaki-article"),
            t("dorayaki-jarticle"),
        }),
        t({
            "}",
            "",
            "\\begin{document}",
            "",
            "\\title{",
        }),
        i(count_template_index()),
        t({
            "}",
            "\\author{",
        }),
        i(count_template_index()),
        t({
            "}",
            "\\date{",
        }),
        i(count_template_index()),
        t({
            "}",
            "",
            "\\maketitle",
            "",
            "\\end{document}",
            "",
        })
    }),
}

