require('keymaps')
require('lazy')

vim.g.loaded_netrw = 1

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.have_nerd_font = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.softtabstop = 2
vim.expandtab = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true

vim.o.wrap = false

vim.o.hlsearch = false
vim.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 10
vim.o.signcolumn = "yes"

-- Enable nvim-treesitter highlighting
vim.opt.foldlevelstart = 99
local file_types = {
  'asm',
  'c',
  'cpp',
  'lua',
}
vim.api.nvim_create_autocmd('FileType', {
  pattern = file_types,
  callback = function()
    vim.treesitter.start() 
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.wo.foldenable = true
  end,
})
