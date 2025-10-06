local detect_env = require('shoehne.detect-cpp-environment')

return {
  name = "Build Debug (MSVC)",
  builder = function()
    local msvc = detect_env.find_msvc()
    if not msvc then
      vim.notify("No Visual Studio installation found!",
      vim.log.levels.ERROR)
      return nil
    end

    local vcvars = msvc.path
    vim.notify("Using Visual Studio " .. msvc.version .. " (" .. msvc.edition .. ")")

    return {
      cmd = {"cmd"},
      args = {"/k",
      string.format('"%s" && msbuild /m /p:Configuration=Debug', vcvars)},
      cwd = vim.fn.getcwd(),
      components = {
        "default",
        "on_output_quickfix",
        "unique"
      },
    }
  end,
  condition = {
    callback = function()
      return vim.fn.glob("*.sln") ~= ""
    end,
  },
}
