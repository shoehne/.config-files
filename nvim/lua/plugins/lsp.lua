return {
  {
    'linrongbin16/lsp-progress.nvim',
    enabled = false,
  },
  {
    'romus204/referencer.nvim',
    enabled = false,
  },
  {
    'smjonas/inc-rename.nvim',
    enabled = false,
  },
  {
    "mason-org/mason.nvim",
    enabled = false,
    config = function()
      require('mason').setup{
      }
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    enabled = false,
    opts = {},
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig"
    },
    config = function ()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "asm_lsp",
          "clangd",
          "lua_ls",
        }
      }
    end
  },
  {
    "neovim/nvim-lspconfig",
    enabled = false,
    opts = {},
    config = function()

      local fs = vim.fs
      local uv = vim.uv
      local nvim_config_root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h:h")
      local roslyn_dll = nvim_config_root .. "/roslyn/artifacts/bin/Microsoft.CodeAnalysis.LanguageServer/Debug/net9.0/Microsoft.CodeAnalysis.LanguageServer.dll"
      vim.lsp.config['roslyn_ls'] = {
        cmd = {
          'dotnet',
          roslyn_dll,
          '--logLevel',
          'Information',
          '--extensionLogDirectory',
          fs.joinpath(uv.os_tmpdir(), 'roslyn_ls/logs'),
          '--stdio',
        },
        filetypes = {
          'cs',
        },
      }

      vim.lsp.enable('roslyn_ls')
    end,
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    enabled = false,
    opts = {},
  },
}


