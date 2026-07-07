
return {
    {
        'nvim-telescope/telescope.nvim', 
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 
                'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
            },

        },
       
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")

            telescope.setup({})
            telescope.load_extension("harpoon")

            vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "Telescope buffers" })
            vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "Telescope help tags" })

        end,
    }
}
