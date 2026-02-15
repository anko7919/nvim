local u = require("utils")
local s = u.s
local t = u.t
local i = u.i

local function init_documentclass_opts(args, parent, user_args)
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
            "\\usepackage{mathtools}",
            "\\usepackage{amsthm}",
            "\\usepackage{amsfonts}",
            "\\usepackage{amssymb}",
            "\\usepackage{unicode-math}",
            "\\usepackage[default,varnothing]{fontspec}",
            "",
            "\\begin{document}",
            "",
            "\\end{document}",
            "",
        })
    }),
}

