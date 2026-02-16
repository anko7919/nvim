return {
    "petertriho/nvim-scrollbar",
    event = { "BufReadPost", "BufNewFile", },
    config = function()
        require("scrollbar").setup({
            handlers = {
                handlers = {
                    cursor = true,
                    diagnostic = true,
                    gitsigns = true,
                    search = true,
                },
                handle = {
                    text = " ",
                    blend = 10,
                },
            },
        })
        require("scrollbar.handlers.gitsigns").setup()
        require("scrollbar.handlers.diagnostic").setup()
        require("scrollbar.handlers.search").setup()
    end,
}

