-- LaTeX
vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = "*.tex", 
    callback = function()
        vim.fn.jobstart({ "latexmk", "-lualatex", "-interaction=nonstopmode", vim.fn.expand("%:p") }, {
            stdout_buffered = true, 
            stderr_buffered = true, 
        })
    end, 
})

