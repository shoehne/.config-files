require("shoehne.keymaps.keymaps")
require("shoehne.lazy")

vim.g.netrw_banner = 0

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.undofile = true

vim.o.wrap = false

vim.o.hlsearch = false
vim.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
-- vim.o.isfname:append("@-@")

vim.o.updatetime = 50
