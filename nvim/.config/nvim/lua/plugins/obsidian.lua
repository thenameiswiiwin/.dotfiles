return {
  'epwalsh/obsidian.nvim',
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'thenameiswiiwin',
        path = '~/personal/notes/thenameiswiiwin/',
      },
    },
    templates = {
      folder = 'Templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M',
    },
  },
}
