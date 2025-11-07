return {
    "mason-org/mason.nvim", 
    build = ":MasonUpdate", 
    lazy = false, 
    config = function()
        require("mason").setup()
    end,
}

