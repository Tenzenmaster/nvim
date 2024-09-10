return {
  'stevearc/oil.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  cond = not vim.g.vscode,
  opts = {
    view_options = {
      show_hidden = true,
    },
  },
  config = function(_, opts)
    require('oil').setup(opts)

    vim.keymap.set('n', '-', '<cmd>Oil<cr>')
  end,
}
