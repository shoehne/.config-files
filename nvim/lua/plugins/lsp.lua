return {
  {
    'linrongbin16/lsp-progress.nvim',
  },
  {
    'romus204/referencer.nvim',
  },
  {
    'smjonas/inc-rename.nvim',
  },
  {
    "mason-org/mason.nvim",
    config = function()
      require('mason').setup{
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
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
        root_markers = { '.csproj' },
      }

      vim.lsp.enable('roslyn_ls')
    end,
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {},
  },
  {
    "Hoffs/omnisharp-extended-lsp.nvim",
  },
  {
    "mason-org/mason-lspconfig.nvim",
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
}


