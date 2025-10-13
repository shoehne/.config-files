local detect_env = require('shoehne.detect-cpp-environment')

return {
  name = "Premake: Generate project files",
  builder = function()
    local premake = detect_env.HasPremake()
    if not premake then
      vim.notify("No premake binary or lua file found. Make sure both binary and a premake5.lua file are present in the project root")
      return nil
    end

    local env = {
      has_gcc = detect_env.HasGcc(),
      has_clang = detect_env.HasClang(),
      msvc_list = detect_env.FindMsvc(true),
    }

    local options = {}
    if env.has_gcc or env.has_clang then
      table.insert(options, {
        label = "Generate Makefile (gmake2)",
        args = {
          "gmake2",
        },
      })
    end
    if #env.msvc_list > 0 then
      for _,  vs in ipairs(env.msvc_list) do
        table.insert(options, {
          label = string.format("Generate Visual Studio %s (%s)",
          vs.version,
          vs.edition),
          args = {
            "vs" .. vs.version
          },
        })
      end
    end
    if #options == 0 then
      vim.notify("No compatible toolchains detected!",
      vim.log.levels.ERROR)
      return nil
    end

    local labels = {}
    for i, o in ipairs(options) do
      table.insert(labels,
      string.format("[%d] %s",
      i,
      o.label))
    end
    local choice = vim.fn.inputlist(labels)
    local selected = options[choice]
    if not selected then 
      vim.notify("Invalid selection",
      vim.log.levels.ERROR)
      return nil
    end
    
    return {
      cmd = {premake},
      args =  selected.args,
      cwd = vim.fn.getcwd(),
      components = {"default", "unique"},
    }
  end,
}
