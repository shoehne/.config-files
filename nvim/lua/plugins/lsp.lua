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
        -- root_dir = function(bufnr, cb)
        --   local buf_name = vim.api.nvim_buf_get_name(bufnr)
        --
        --   if not buf_name:match('^' .. fs.joinpath('/tmp/MetadataAsSource/')) then
        --     -- if buf_name:find(nvim_config_root, 1, true) then
        --     --   return
        --     -- end
        --     -- try find solutions root first
        --     local root_dir = fs.root(bufnr, function(fname, _)
        --       return fname:match('%.sln[x]?$') ~= nil
        --     end)
        --
        --     if not root_dir then
        --       -- try find projects root
        --       root_dir = fs.root(bufnr, function(fname, _)
        --         return fname:match('%.csproj$') ~= nil
        --       end)
        --     end
        --
        --     if root_dir then
        --       cb(root_dir)
        --     end
        --   end
        -- end,
        filetypes = {
          'cs',
        },
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
}


