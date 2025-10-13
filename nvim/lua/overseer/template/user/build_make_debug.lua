return {
  name = "Build Debug (Make)",
  builder = function()
    local compiler = vim.fn.executable("clang") == 1 and "clang" or "gcc"
    return {
      cmd = {"make"},
      args = {},
      env = {CC = compiler},
      cwd = vim.fn.getcwd(),
      components = { "default", "on_output_quickfix", "unique"},
    }
  end,
  condition = {
    filetype = {
      'c',
      'cpp',
    },
    callback = function()
      return vim.fn.filereadable("Makefile") == 1
    end
  },
}
