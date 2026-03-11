local u = require("utils")
local s = u.s 
local i = u.i
local f = u.f

-- 関数の引数からDoxygen対応コメントを生成する
local function create_doxy_arguments(args, parent, user_args)
    local arg_list = args[1][1]  -- snip の最初の insert_node から取得
    local params = { "" }
    if #arg_list ~= 0 then
        table.insert(params, " *")
    end
    -- 正規表現により変数名を抽出
    for type_str, var_name in string.gmatch(arg_list, "([%w_:]*%s*[%w_:]+[%*%&]*)%s+[%*%&]*([%w_]+)%s*[^%w_]*") do
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
    s("fnd", {
        i(1), t("("), i(2), t(")"), t({ " {", "\t", "}", }),
    }),
    -- 関数プロトタイプ宣言のスニペット
    s("fnp", {
        t({ "/**", 
            " * @brief", 
        }),
        f(create_doxy_arguments, { 3 }),
        t({
            "",
            "",
        }),
        f(create_doxy_return, { 1 }),
        t({
            " */",
        }),
        i(1), i(2), t("("), i(3), t(")"), t(";"),
    })
}

