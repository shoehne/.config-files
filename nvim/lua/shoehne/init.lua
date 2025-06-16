require("shoehne.keymaps")
require("shoehne.lazy")

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

vim.cmd [[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]]
