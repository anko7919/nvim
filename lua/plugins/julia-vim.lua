return {
    {
        "JuliaEditorSupport/julia-vim", 
        ft = "julia", 
        config = function()
            require("julia-vim").setup({})
        end, 
    }, 
}

