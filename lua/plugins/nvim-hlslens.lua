return {
    "kevinhwang91/nvim-hlslens",
    event = "BufReadPost",
    opts = {
        auto_enable = true,
        enable_incsearch = true,
        nearest_only = true,

    },
    keys = {
        {
            "n",
            function()
                vim.cmd("normal! " .. vim.v.count1 .. "n")
                require("hlslens").start()
            end,
            mode = "n",
            desc = "Next search result + hlslens",
        },
        {
            "N",
            function ()
                vim.cmd("normal! " .. vim.v.count1 .. "N")
                require("hlslens").start()
            end,
            mode = "n",
            desc = "Previous search result + hlslens",
        }
    },
}

