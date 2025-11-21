return {
    -- 括弧補完
    {
        "windwp/nvim-autopairs", 
        event = "InsertEnter", 
        config = function()
            require("nvim-autopairs").setup({})
        end,
    }
}

