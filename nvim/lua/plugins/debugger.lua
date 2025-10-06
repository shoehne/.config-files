return {
  {
    "mfussenegger/nvim-dap",
    enabled = true,
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'jay-babu/mason-nvim-dap.nvim',
    },
    config = function()
      local dap = require('dap')
      local netcoredbg_bin
      local is_windows = vim.fn.has("win32") == 1

      if is_windows then
        netcoredbg_bin = vim.fn.getenv("ProgramFiles(x86)") .. "\\netcoredbg\\netcoredbg.exe"
        vim.opt.shellslash = false
      end

      dap.adapters.coreclr = {
        type = 'executable',
        command = netcoredbg_bin,
        args = { '--interpreter=vscode' },
      }

      dap.configurations.cs = {
        {
          type = 'coreclr',
          name = 'launch - netcoredbg',
          request = 'launch',
          cwd = vim.fn.getcwd(),
          program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
          end,
        }
      }

      -- Keymaps for controlling the debugger
      vim.keymap.set("n", "q", function()
        dap.terminate()
        dap.clear_breakpoints()
      end, { desc = "Terminate and clear breakpoints" })

      vim.keymap.set("n", "<F5>", dap.continue, { desc = "Start/continue debugging" })
      vim.keymap.set("n", "<F6>", dap.disconnect, { desc = "Disconnect dap" })
      vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step over" })
      vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step into" })
      vim.keymap.set("n", "<F12>", dap.step_out, { desc = "Step out" })
      vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
      vim.keymap.set("n", "<leader>dO", dap.step_over, { desc = "Step over (alt)" })
      vim.keymap.set("n", "<leader>dC", dap.run_to_cursor, { desc = "Run to cursor" })
      vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle DAP REPL" })
      vim.keymap.set("n", "<leader>dj", dap.down, { desc = "Go down stack frame" })
      vim.keymap.set("n", "<leader>dk", dap.up, { desc = "Go up stack frame" })

      -- .NET specific setup using `easy-dotnet`
      -- require("easy-dotnet.netcoredbg").register_dap_variables_viewer() -- special variables viewer specific for .NET
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    enabled = true,
    lazy = true,
    dependencies = {
      'mason-org/mason.nvim',
      'mfussenegger/nvim-dap',
    },
    config = function()
      local mason_dap = require('mason-nvim-dap')

      mason_dap.setup {
        ensure_installed = {
        }
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    enabled = true,
    lazy = true,
    version = '4.x',
    dependencies = {
      "mfussenegger/nvim-dap",
      'nvim-neotest/nvim-nio'
    },

    config = function()
      local dap = require('dap')
      local dap_ui = require('dapui')
      dap_ui.setup()

      dap.listeners.before.attach.dapui_config = function()
        dap_ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dap_ui.open()
      end
      dap.listeners.before.event_terminated.dap_ui_config = function()
        dap_ui.close()
      end
      dap.listeners.before.event_exited.dap_ui_config = function()
        dap_ui.close()
      end
    end,
  },
  {
    'brevin33/raddebugger.nvim',
    enabled = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()

      local rad_dbg = require('rad_debugger')
    end,
  },
}
