return {
	{
        'nvim-telescope/telescope.nvim', 
        dependencies = { 
            'nvim-lua/plenary.nvim' 
        },
        opts = {
            defaults = {
                mappings = {
                    i = {
                        ["<C-c"] = "<Esc",
                    },
                },
            },
        },
        config = function()
            local telescope = require('telescope')
            local builtin = require('telescope.builtin')
            telescope.setup {
                vim.keymap.set('n', '<leader>ff', builtin.find_files, { 
                    desc = ' Telescope find files'
                }),
                vim.keymap.set('n', '<F12>', builtin.lsp_references, {
                    desc = 'Find LSP references'
                })
            }
        end,
    }
}
