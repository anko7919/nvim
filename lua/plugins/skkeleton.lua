return {
    "vim-skk/skkeleton",
    event = "InsertEnter",
    dependencies = {
        "vim-denops/denops.vim",
    },
    keys = {
        { "<C-j>", "<Plug>(skkeleton-toggle)", mode = { "i", "c", "t", }, desc = "skkeleton toggle" },
    },
    config = function()
        local function skkeleton_init()
            vim.fn["skkeleton#config"]({
                globalDictionaries = { "~/.skk/SKK-JISYO.L", "~/.skk/SKK-JISYO.math" }, 
                eggLikeNewline = true,
                userDictionary = "~/.skk/SKK-JISYO.user",
                showCandidatesCount = 1,
                registerConvertResult = true,
            })
            vim.fn["skkeleton#register_kanatable"]("rom", {
                [","] = { "，", "" },
                ["."] = { "．", "" },
            })
            vim.fn["skkeleton#register_kanatable"]("rom", {
                l = false,
                la = { "ぁ", "" },
                li = { "ぃ", "" },
                lu = { "ぅ", "" },
                le = { "ぇ", "" },
                lo = { "ぉ", "" },
                lya = { "ゃ", "" },
                lyu = { "ゅ", "" },
                lyo = { "ょ", "" },
            })
        end

        vim.api.nvim_create_autocmd("User", {
            pattern = "skkeleton-initialize-pre",
            callback = skkeleton_init,
        })
    end,
}

