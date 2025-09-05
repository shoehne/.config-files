local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { 
  desc = ' Telescope find files'
})
vim.keymap.set('n', '<F12>',telescope_builtin.lsp_references, {
  desc = 'Find LSP references'
})
vim.keymap.set('n', '<leader>lg',telescope_builtin.live_grep, {
  desc = 'Use ripgrep to find files'
})
