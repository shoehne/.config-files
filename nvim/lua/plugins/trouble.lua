return {
  "folke/trouble.nvim",
  enabled = false,
  opts = {
  },
  cmd = {
    "Trouble",
  },
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xb",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)"
    },
  },
  modes = {
    diagnostic = {
      mode = "diagnostics",
      filter = {
        any = {
          buf = 0,
          severity = vim.diagnostic.severity.ERROR,
          function(item)
            return item.filename:find((vim.loop or vim.uv).cwd(), 1, true)
          end,
        },
      },
      auto_open = true,
      auto_close = true,
    },
  },
}

