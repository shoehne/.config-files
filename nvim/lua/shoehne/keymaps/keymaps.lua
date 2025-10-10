local keymap = vim.keymap.set
vim.g.mapleader = " "
-- keymap("n", "<leader>pv", vim.cmd.Ex)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap("n", "Q", "<nop>")

keymap("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- Switch between buffers
keymap('n', '<A-h>', '<C-w>h', {
    noremap = true,
    silent = true
})
keymap('n', '<A-l>', '<C-w>l', {
    noremap = true,
    silent = true
})
keymap('n', '<A-j>', '<C-w>j', {
    noremap = true,
    silent = true
})
keymap('n', '<A-k>', '<C-w>k', {
    noremap = true,
    silent = true
})
keymap('n', '<A-n>', '<C-w>n', {
    noremap = true,
    silent = true
})
keymap('n', '<A-q>', '<C-w>q', {
    noremap = true,
    silent = true
})

-- Neogit
keymap('n',
  '<M-F1>',
  ':Neogit kind=floating<CR>',
  {
    desc = 'Open Neogit as a floating window'
  })

-- File explorer
keymap('n',
  '<leader>ed',
  ':Fern . -drawer -toggle -width=50<CR>',
  {
    desc = 'Open file explorer drawer on the left'
  })
keymap('n',
  '<leader>eb',
  ':Fern .<CR>',
  {
    desc = 'Open file explorer in buffer'
  })

-- Cellular Automaton
keymap('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>')
keymap('n', '<leader>gol', '<cmd>CellularAutomaton game_of_life<CR>')

