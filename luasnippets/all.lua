---@meta

s = require("luasnip.nodes.snippet").S
sn = require("luasnip.nodes.snippet").SN
isn = require("luasnip.nodes.snippet").ISN
t = require("luasnip.nodes.textNode").T
i = require("luasnip.nodes.insertNode").I
f = require("luasnip.nodes.functionNode").F
c = require("luasnip.nodes.choiceNode").C
d = require("luasnip.nodes.dynamicNode").D
r = require("luasnip.nodes.restoreNode").R
events = require("luasnip.util.events")
k = require("luasnip.nodes.key_indexer").new_key
ai = require("luasnip.nodes.absolute_indexer")
extras = require("luasnip.extras")
l = require("luasnip.extras").lambda
rep = require("luasnip.extras").rep
p = require("luasnip.extras").partial
m = require("luasnip.extras").match
n = require("luasnip.extras").nonempty
dl = require("luasnip.extras").dynamic_lambda
fmt = require("luasnip.extras.fmt").fmt
fmta = require("luasnip.extras.fmt").fmta
conds = require("luasnip.extras.expand_conditions")
postfix = require("luasnip.extras.postfix").postfix
types = require("luasnip.util.types")
parse = require("luasnip.util.parser").parse_snippet
ms = require("luasnip.nodes.multiSnippet").new_multisnippet

-- 関数の引数からDoxygen対応コメントを生成する
local function create_doxy_arguments(args, parent, user_args)
    local arg_list = args[1][1]  -- snip の最初の insert_node から取得
    local params = { "" }
    if #arg_list ~= 0 then
        table.insert(params, " *")
    end
    -- TODO: 現在正規表現がうまく動かないので修正が必要
    -- 例えば`int *ptr`等で動かない
    for type_str, var_name in string.gmatch(arg_list, "([%w_]*%s*[%w_:]+)%s+([%w_]+)%s*[^%w]*") do
        -- table.insert(params, "DEBUG: " .. type_str)
        table.insert(params, " * @param " .. var_name)
    end
    return params
end

local function create_doxy_return(args, parent, user_args)
    if args[1][1] ~= "void" then
        return { " * ", " * @return", "", }
    else
        return ""
    end
end

return {
    -- 関数定義のスニペット
    s("fn", {
        t({ "/**", 
            " * @brief", 
        }),
        f(create_doxy_arguments, { 2 }),
        t({
            "",
            "",
        }),
        f(create_doxy_return, { 3 }),
        t({
            " */",
            "auto ",
        }),
        i(1), t("("), i(2), t(") -> "), i(3), t({ " {", "\t", "}", }),
    }),
}

