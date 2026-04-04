return {
    "vim-skk/skkeleton",
    dependencies = {
        "vim-denops/denops.vim",
    },
    keys = {
        { "<C-j>", "<Plug>(skkeleton-enable)", mode = { "i", "c", "t", }, desc = "skkeleton enable" },
    },
    config = function()
        local function skkeleton_init()
            vim.fn["skkeleton#config"]({
                globalDictionaries = { "~/.skk/SKK-JISYO.L" }, 
                eggLikeNewline = true,
                userDictionary = "~/.skk/SKK-JISYO.math",
                showCandidatesCount = 1,
                registerConvertResult = true,
            })
            vim.fn["skkeleton#register_kanatable"]("rom", {
                [","] = { "，", "" },
                ["."] = { "．", "" },
            })
        end

        vim.api.nvim_create_autocmd("User", {
            pattern = "skkeleton-initialize-pre",
            callback = skkeleton_init,
        })
    end,
}

