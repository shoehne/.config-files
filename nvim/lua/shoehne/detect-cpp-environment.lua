local M = {}

local vs_roots = {

  "C:\\Program Files\\Microsoft Visual Studio",
  "C:\\Program Files (x86)\\Microsoft Visual Studio",
}

local vs_versions = {
  "2022",
  "2019",
  "2017",
  "2015",
}

local vs_editions = {
  "Community",
  "Professional",
  "Enterprise",
  "BuildTools",
}

function M.FindMsvc(find_all)
  local found = {}

  for _, root in ipairs(vs_roots) do
    for _, ver in ipairs(vs_versions) do
      for _, edition in ipairs(vs_editions) do
        local bat = table.concat({ root, ver, edition, "VC", "Auxiliary", "Build", "vcvars64.bat" }, "\\")
        if vim.fn.filereadable(bat) == 1 then
          if find_all then 
            table.insert(found, {
              version = ver,
              edition = edition,
              path = bat
            })
          else
            return {
              version = ver,
              edition = edition,
              path = bat
            })
          end
        end
      end
    end
  end
  if find_all then
    return found
  end
end

function M.HasGcc()
  return vim.fn.executable("gcc") == 1
end
function M.HasClang()
  return vim.fn.executable("clang") == 1
end
function M.HasPremake()
  local cwd = vim.fn.getcwd()
  local windows_bin = cwd .. "\\premake5.exe"
  local unix_bin = cwd "/premake5"
  local premake_file = cwd .. "/premake5.lua"

  if vim.fn.filereadable(windows_bin) then
    return windows_bin
  elseif vim.fn.filereadable(unix_bin) then
    return unix_bin
  end
  if not vim.fn.filereadbale(premake_file) then
    return nil
  end
  return nil
end

return M
