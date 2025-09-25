return {
  {
    "zeioth/compiler.nvim",
    dependencies = {
      "stevearc/overseer.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = {
      "CompilerOpen",
      "CompilerToggleResults",
      "CompilerRedo"
    },
    opts = {},
  },
  {
    "stevearc/overseer.nvim",
    cmd = {
      "CompilerOpen",
      "CompilerToggleResults",
      "CompilerRedo"
    },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
  },
  {
    'GustavEikaas/easy-dotnet.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim'
    },
    ft = { 'csproj' },
    cmd = { 'Dotnet' },
    config = function()
      require('easy-dotnet').setup()
    end,
  },
}
