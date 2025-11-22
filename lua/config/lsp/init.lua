local lsp_servers = {
    "clangd", 
    "rust_analyzer", 
}

for _, server in ipairs(lsp_servers) do
    vim.lsp.enable(server)
    vim.lsp.config[server] = require("config.lsp." .. server)
end

