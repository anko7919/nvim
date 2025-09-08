-- インデント系のデフォルト設定
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- CMake
vim.api.nvim_create_autocmd("FileType", {
    pattern = "cmake", 
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.expandtab = true
    end, 
})

-- Make
vim.api.nvim_create_autocmd("FileType", {
    pattern = "make", 
    callback = function()
        vim.bo.shiftwidth = 8
        vim.bo.tabstop = 8
        vim.bo.expandtab = false
        vim.bo.smartindent = false
    end, 
})

-- C/C++
vim.api.nvim_create_autocmd("FileType", {
    pattern = "c,cpp", 
    callback = function()
        vim.bo.smartindent = true
    end, 
})

-- Lisp系
vim.api.nvim_create_autocmd("FileType", {
    pattern = "racket", 
    callback = function()
        vim.bo.smartindent = true
        vim.bo.tabstop = 2
        vim.bo.shiftwidth = 2
        vim.bo.expandtab = true
    end, 
})

-- TeX, LaTeX
vim.api.nvim_create_autocmd("FileType", {
    pattern = "tex", 
    callback = function()
        vim.bo.shiftwidth = 2
        vim.bo.tabstop = 2
        vim.bo.expandtab = true
        vim.bo.smartindent = true
    end, 
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "julia", 
    callback = function()
        vim.bo.shiftwidth = 4
        vim.bo.tabstop = 4
        vim.bo.expandtab = true
        vim.bo.smartindent = true
    end, 
})

