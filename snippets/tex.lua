local u = require("luasnip_utils")
local s = u.s
local t = u.t
local i = u.i

return {
    s("init",{
        t("\\documentclass{"),
        i(count_template_index()),
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
            "",
            "\\author{",
        }),
        i(count_template_index()),
        t({
            "}",
            "",
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

