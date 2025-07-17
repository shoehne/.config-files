return {
	{
        'nvim-telescope/telescope.nvim', 
        dependencies = { 
            'nvim-lua/plenary.nvim' 
        },
        config = function()
            local telescope = require('telescope')
            local builtin = require('telescope.builtin')
            telescope.setup {
                vim.keymap.set('n', '<leader>ff', builtin.find_files, { 
                    desc = ' Telescope find files'
                }),
                vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {
                    desc = 'Find LSP references'
                })
            }
        end,
    }
}
