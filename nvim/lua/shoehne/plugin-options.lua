require('overseer').setup({
  templates = {
    'builtin',
    'user.generate_premake',
    'user.build_make_debug',
    'user.build_make_release',
    'user.build_msvc_debug',
    'user.build_msvc_release',
  }
})
