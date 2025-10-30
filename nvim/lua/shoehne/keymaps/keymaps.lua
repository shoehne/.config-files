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

keymap('n', '<Tab>', 'za', {
  noremap = true,
  silent = true,
  desc = "Toggle fold"
})

-- Buffers, Windows, Tabs
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
keymap('n', '<A-v>', '<C-W>v', {
  noremap = true,
  silent = true
})
keymap('n', '<A-q>', '<C-w>q', {
    noremap = true,
    silent = true
})
keymap('n', '<A-P>', '<C-W>p', {
  noremap = true,
  silent = true
})
keymap('n', '<A-Q>', ':tabclose<CR>', {
  noremap = true,
  silent = true
})
keymap('n', '<A-N>', ':tabnew<CR>', {
  noremap = true,
  silent = true
})
keymap('n', '<A-H>', 'gT', {
  noremap = true,
  silent = true
})
keymap('n', '<A-L>', 'gt', {
  noremap = true,
  silent = true
})

for i = 1, 9 do
  keymap('n', string.format("<A-%d>", i), string.format("%dgt", i), {
    noremap = true,
    silent = true
  })
end

-- Neogit
keymap('n',
  '<M-F1>',
  ':Neogit kind=floating<CR>',
  {
   desc = 'Open Neogit as a floating window'
  })
keymap('n',
  '<M-F2>',
  ':Neogit cwd=%:p:h kind=floating<CR>',
  {
    desc = 'Open Neogit in the repo of the current file'
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

-- Compiler
keymap('n', '<S-F6>', ':OverseerToggle<CR>', {
  desc = 'Open Overseer Task List',
  noremap = true,
  silent = true
})
keymap('n', '<S-F5>', ':OverseerRun<CR>', {
  desc = 'Run Overseer Task',
  noremap = true,
  silent = true
})
