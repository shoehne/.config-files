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
                vimgrep_arguments = {
                    'rg',
                    '--smart-case',
                    '--hidden',
                    '--color=never',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--ignore-file',
                    vim.fn.expand('$XDG_CONFIG_HOME/.ignore'),
                },
                pickers = {
                    find_files = {
                        find_command = {
                            'rg',
                            '--files',
                            '--hidden',
                            '--ignore-file',
                            vim.fn.expand('$XDG_CONFIG_HOME/.ignore'),
                        },
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
                }),
                vim.keymap.set('n', '<leader>lg', builtin.live_grep, {
                    desc = 'Use ripgrep to find files'
                }),
            }
        end,
    }
}
