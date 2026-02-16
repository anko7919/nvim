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
        t({ "/**", 
            " * @brief", 
        }),
        f(create_doxy_arguments, { 2 }),
        t({
            "",
            "",
        }),
        f(create_doxy_return, { 4 }),
        t({
            " */",
            "auto ",
        }),
        i(1), t("("), i(2), t(")"), i(3), t(" -> "), i(4), t({ " {", "\t", "}", }),
    }),
    -- 関数プロトタイプ宣言のスニペット
    s("fnp", {
        t({ "/**", 
            " * @brief", 
        }),
        f(create_doxy_arguments, { 2 }),
        t({
            "",
            "",
        }),
        f(create_doxy_return, { 4 }),
        t({
            " */",
            "auto ",
        }),
        i(1), t("("), i(2), t(")"), i(3), t(" -> "), i(4), t(";"),
    })
}

