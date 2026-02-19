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
vim.g.omni_sql_no_default_maps = 1

vim.o.textwidth = 80

local function adjust_textwidth()
  local indent = vim.fn.indent(0)
  local textwidth = vim.o.textwidth
  local adjusted_textwidth = textwidth - indent

  if adjusted_textwidth > 0 then
    vim.o.textwidth = adjusted_textwidth
  else
    vim.o.textwidth = 0
  end
end

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    adjust_textwidth()
  end,
})
vim.api.nvim_create_autocmd({'VimResized',
  'WinNew',
  'WinEnter',
}, {
  callback =  function()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local config = vim.api.nvim_win_get_config(win)
      if config.relative == '' then
        local width = vim.api.nvim_win_get_width(win)
        if width > vim.o.textwidth + 5 then
          vim.api.nvim_win_set_width(win, vim.o.textwidth + 5)
        end
      end
    end
    end
})

-- Enable nvim-treesitter highlighting
vim.opt.foldlevelstart = 99
local file_types = {
  'asm',
  'c',
  'cpp',
  'cs',
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

-- Set the colour theme
-- vim.cmd("colorscheme cyberpurple")
