-- PLUGINS
return {
    -- color scheme
    {
        "cocopon/iceberg.vim", 
        lazy = false, 
        priority = 1000, 
        config = function()
            vim.cmd("colorscheme iceberg")
        end, 
    }, 

    -- 括弧補間
    {
        "windwp/nvim-autopairs", 
        event = "InsertEnter", 
        config = true, 
    }, 

    -- 探索
    {
        "nvim-telescope/telescope.nvim", 
        dependencies = { "nvim-lua/plenary.nvim" }, 
        lazy = false, 
        config = function()
            local builtin = require("telescope.builtin")
            local opts = { noremap = true, silent = true }

            -- キーマップ設定
            vim.keymap.set("n", "<leader>ff", builtin.find_files, opts) -- ファイル検索
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, opts)  -- テキスト検索
            vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)    -- バッファ検索
            vim.keymap.set("n", "<leader>fr", builtin.oldfiles, opts)   -- 最近開いたファイル
        end, 
    }, 

    -- ステータスバー
    {
        "nvim-lualine/lualine.nvim", 
        dependencies = { "nvim-tree/nvim-web-devicons" }, 
        lazy = false,
        config = function()
            require("lualine").setup()
        end, 
    }, 

    {
        "folke/which-key.nvim", 
        event = "VeryLazy", 
        config = function()
            local wk = require("which-key")

            -- デフォルト設定
            wk.setup({})

            -- キーマップ登録
            wk.add({
                { "<leader>f", group = "File" }, -- group
                { "<leader>ff", desc = "Find File", mode = "n" }, 
                { "<leader>fg", desc = "Live Grep", mode = "n" }, 
                { "<leader>fb", desc = "Buffer", mode = "n" }, 
                { "<leader>fr", desc = "Recent File", mode = "n" }, 

                { "<leader>t", group = "Open Terminal" }, 
                { "<leader>tr", desc = "Right", mode = "n" }, 
                { "<leader>tb", desc = "Below", mode = "n" }, 
            })
        end, 
    }, 

    {
        "stevearc/oil.nvim", 
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {}, 
        dependencies = { { "echasnovski/mini.icons" , opts = {} } }, 
        lazy = false, 
        config = function()
            require("oil").setup()
        end, 
    }, 

    -- vimtex 
    {
        "lervag/vimtex", 
        lazy = false, 
        ft = "tex", 
        init = function()
            -- vim.g.vimtex_view_method = "/mnt/c/Users/haupt/AppData/Local/SumatraPDF/SumatraPDF.exe" 
            vim.g.vimtex_view_method = "general"
            vim.g.vimtex_fold_enabled = false
            vim.g.vimtex_format_enabled = true
            vim.g.vimtex_view_general_viewer = "/mnt/c/Users/haupt/AppData/Local/SumatraPDF/SumatraPDF.exe"
        end, 
    }, 

    -- Rust crates.nvim
    {
        "saecki/crates.nvim", 
        tag = "stable", 
        -- event = { "BufRead Cargo.toml" }, 
        config = function()
            require("crates").setup()
        end, 
    }, 

    -- friendly-snippets
    {
        "rafamadriz/friendly-snippets", 
    }, 
}

