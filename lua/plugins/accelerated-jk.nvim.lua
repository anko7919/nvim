return {
    "rainbowhxch/accelerated-jk.nvim", 
    lazy = true, 
    keys = {
        { "j", "<plug>(accelerated_jk_gj)", mode = "n" }, 
        { "k", "<plug>(accelerated_jk_gk)", mode = "n" }, 
    }, 
    config = function ()
        require("accelerated-jk").setup({
            mode = "time_driven", 
            enable_deceleration = false, 
            acceleration_motions = {}, 
            acceleration_limit = 150, 
            acceleration_table = { 2, 3, 6, 12, 16, 20, 24, 28, 31, 37, 45, }, 
            deceleration_table = { {200, 3}, {300, 7}, {450, 11}, {600, 15}, {750, 21}, {900, 9999} }, 
        })
    end
}

