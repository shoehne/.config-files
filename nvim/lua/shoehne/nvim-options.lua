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

vim.o.updatetime = 250
