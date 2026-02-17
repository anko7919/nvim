return {
    "monaqa/dial.nvim",
    event = "BufReadPost",
    keys = {
        -- Normal Mode
        { "<C-a>", function() require("dial.map").manipulate("increment", "normal") end, mode = "n", },
        { "<C-x>", function() require("dial.map").manipulate("decrement", "normal") end, mode = "n", },
        { "g<C-a>", function() require("dial.map").manipulate("increment", "gnormal") end, mode = "n", },
        { "g<C-x>", function() require("dial.map").manipulate("decrement", "gnormal") end, mode = "n", },

        -- Visual Mode 
        { "<C-a>", function() require("dial.map").manipulate("increment", "visual") end, mode = "v", },
        { "<C-x>", function() require("dial.map").manipulate("decrement", "visual") end, mode = "v", },
        { "g<C-a>", function() require("dial.map").manipulate("increment", "gvisual") end, mode = "v", },
        { "g<C-x>", function() require("dial.map").manipulate("decrement", "gvisual") end, mode = "v", },
    },
    config = function()
        local augend = require("dial.augend")
        require("dial.config").augends:register_group{
            default = {
                augend.integer.alias.decimal,
                augend.integer.alias.hex,
                augend.date.alias["%Y/%m/%d"],
                augend.constant.alias.bool,
                augend.constant.new{
                    elements = { "&&", "||", },
                    word = false,
                    cyclic = true,
                },
            },
        }
    end
}

