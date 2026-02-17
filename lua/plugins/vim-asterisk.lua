return {
    "haya14busa/vim-asterisk",
    event = "BufReadPre",
    keys = {
        { "*", "<Plug>(asterisk-z*)", mode = "n", },
        { "#", "<Plug>(asterisk-z#)", mode = "n", },
        { "g*", "<Plug>(asterisk-gz*)", mode = "n", },
        { "g#", "<Plug>(asterisk-gz#)", mode = "n", },
    },
    config = function()
        vim.g["asterisk#keeppos"] = 1
    end
}

