return {
  'catppuccin/nvim',
  name = 'catppuccin',
  cond = not vim.g.vscode,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('catppuccin')
  end,
}
