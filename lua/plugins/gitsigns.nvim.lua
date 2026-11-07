return {
    "lewis6991/gitsigns.nvim", 
    event = { "BufReadPost", "BufNewFile", }, 
    opts = {
        watch_gitdir = {
            follow_files = false
        },
        attach_to_untracked = true,
        sign_priority = 6,
        update_debounce = 500,
        max_file_length = 5000,
    },
}

