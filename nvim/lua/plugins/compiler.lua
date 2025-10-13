return {
  {
    "zeioth/compiler.nvim",
    enabled = true,
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
    enabled = true,
    lazy = false,
    cmd = {
      "CompilerOpen",
      "CompilerToggleResults",
      "CompilerRedo",
      "OverseerRun",
      "OverseerToggle",
    },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 25,
        max_height = 25,
        default_detail = 1
      },
    },
    -- config = function(_, opts)
    --   local overseer = require('overseer')
    --
    --   overseer.setup({
    --     templates = {
    --       'builtin',
    --       'user.generate-premake',
    --     },
    --     task_list = {
    --       direction = "bottom",
    --       min_height = 25,
    --       max_height = 25,
    --       default_detail = 1
    --     },
    --   })
    -- end,
  },
  {
    'GustavEikaas/easy-dotnet.nvim',
    enabled = true,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim'
    },
    -- ft = { 'csproj' },
    cmd = { 'Dotnet' },
    config = function()
      local nvim_config_root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h")
      local netcoredbg_bin = nvim_config_root .. "/netcoredbg/build/src/Release/netcoredbg.exe"
      local dotnet = require('easy-dotnet')
      dotnet.setup {
        debugger = {
          bin_path = netcoredbg_bin,
        }
      }
    end,
  },
}
