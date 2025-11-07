return {
    "mason-org/mason.nvim", 
    build = ":MasonUpdate", 
    config = function()
        require("mason").setup()
    end,
}

