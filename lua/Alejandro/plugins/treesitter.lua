return {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local ts = require("nvim-treesitter")
            
            ts.setup({
                ensure_installed = {
                    "lua", 
                    "python",
                    "javascript",
                    "html",
                    "css",
                    "json",
                    "bash",
                    "markdown",
                    "markdown_inline",
                },
                highlight = {
                    enable = true,
                },
            })
        end,
}
