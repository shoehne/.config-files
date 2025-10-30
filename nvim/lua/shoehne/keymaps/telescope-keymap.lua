local telescope_builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {
  desc = ' Telescope find files'
})
vim.keymap.set('n', '<leader>ref',telescope_builtin.lsp_references, {
  desc = 'Find LSP references'
})
vim.keymap.set('n', '<leader>lg',telescope_builtin.live_grep, {
  desc = 'Use ripgrep to find files'
})
vim.keymap.set('n', '<leader>cfg', function()
  telescope_builtin.find_files {cwd = vim.fn.stdpath'config'}
end,
{desc = "Search in nvim config"})
vim.keymap.set('n', '<F12>', telescope_builtin.lsp_definitions, {
  desc = 'Goto definition'
})
vim.keymap.set('n', '<leader><F12>', telescope_builtin.lsp_implementations, {
  desc = 'Goto implementations'
})
