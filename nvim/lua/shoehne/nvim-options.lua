vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
vim.wo.number = true
vim.wo.relativenumber = true

-- vim.g.netrw_banner = 0
vim.g.have_nerd_font = true
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.swapfile = false
vim.o.backup = false
-- vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.wrap = false

vim.o.hlsearch = false
vim.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 10
vim.o.signcolumn = "yes"
-- vim.o.isfname:append("@-@")

-- Enable nvim-treesitter highlighting
vim.opt.foldlevelstart = 99
local filetypes_table = {
  'cs',
  'lua',
}
vim.api.nvim_create_autocmd('FileType', {
  pattern = filetypes_table,
  callback = function()
    vim.treesitter.start()
    vim.wo.foldmethod = 'expr'
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
vim.api.nvim_create_autocmd({ 'BufWinLeave', 'BufWinEnter' }, {
 pattern = filetypes_table,
 command = [[silent! mkview | silent! loadview]],
})

-- Set the colour theme
-- vim.cmd("colorscheme cyberpurple")
