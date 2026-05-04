local u = require("utils")
local s = u.s
local t = u.t
local i = u.i

local function init_documentclass_opts(args, _, _)
    if args[1][1] == "jlreq" then
        return "[jafontscale=0.9247]"
    else
        return ""
    end
end

return {
    s("init",{
        t("\\documentclass"),
        f(init_documentclass_opts, { 1 }),
        t("{"), i(1), t("}"),
        t({"", ""}),
        t({
            "",
            "\\usepackage{amsthm}",
            "\\usepackage[default,varnothing]{fontsetup}",
            "\\usepackage{luatexja}",
            "",
            "\\usepackage[",
        }),
        i(2),
        t({
            "]{dorayaki-font}",
            "\\usepackage{dorayaki-math}",
            "\\usepackage[language=",
        }),
        i(3),
        t({
            "]{dorayaki-thm}",
            "",
            "",
        }),
        t("\\title{"), i(4), t({ "}", "" }),
        t("\\author{"), i(5), t({ "}", "" }),
        t("\\date{"), i(6), t({ "}", "" }),
        t({
            "",
            "\\begin{document}",
            "",
            "\\maketitle",
            "",
            "\\end{document}",
            "",
        })
    }),
}

