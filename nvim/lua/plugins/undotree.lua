return {
  {
    "mbbill/undotree",
    config = function()
      vim.g.undotree_WindowLayout = 2
      vim.keymap.set('n', '<leader><F5>', vim.cmd.UndotreeToggle, {
        desc = 'Toggle Undotree'
      })
    end
  }
}
