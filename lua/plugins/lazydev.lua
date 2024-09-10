return {
  'folke/lazydev.nvim',
  ft = 'lua',
  cond = not vim.g.vscode,
  dependencies = { 'Bilal2453/luvit-meta', lazy = true },
  opts = {
    library = {
      {
        path = 'luvit-meta/library',
        words = { 'vim%.uv' },
      },
    },
  },
}
