-- 使用するLSPサーバー
local lsp_servers = {
    "clangd", 
    "rust_analyzer", 
    "cmake", 
    "julials", 
    "pyright", 
    "texlab", 
}

-- lsp_serversのそれぞれを読み込み
for _, server in ipairs(lsp_servers) do
    vim.lsp.enable(server)
    vim.lsp.config(server, require("config.lsp." .. server))
end

