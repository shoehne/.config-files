local keymap = vim.keymap.set
vim.g.mapleader = " "

keymap("n", "<leader>pv", vim.cmd.Ex)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "Q", "<nop>")

keymap("n", "<leader><leader>", function() 
	vim.cmd("so")
end)
