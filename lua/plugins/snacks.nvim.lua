return {
    {
        "folke/snacks.nvim", 
        priority = 1000, 
        lazy = false, 
        init = function()
            require("snacks").setup({})
        end, 
    }, 
}

