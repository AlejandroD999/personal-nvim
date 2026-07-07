return {
                
    'sainnhe/everforest',
    name = "everforest",
    lazy = false,
    priority = 1000,
    config = function()
        -- Follow order bellow 

        -- Options first
        vim.g.everforest_background = "hard"
        vim.g.everforest_enable_italic = true
        vim.g.everforest_transparent_background = 2
        vim.g.everforest_better_performance = 1
        vim.g.everforest_cursor = 'green'

        
        -- Load the scheme
        vim.cmd.colorscheme('everforest')
    
        -- Last Highlights
    end,
}
