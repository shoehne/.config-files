return {
  {
    'javiorfo/nvim-soil',
    dependencies = {
      'javiorfo/nvim-nyctophilia',
    },
    enabled = false,
    ft = {
      'plantuml',
    },
    opts = {
      image = {
        format = 'svg',
      },
    },
  },
  {
    'Maduki-tech/nvim-plantuml',
    dependencies = {},
    enabled = false,
    ft = {
      'plantuml',
    },
    opts = {},
  }
}
