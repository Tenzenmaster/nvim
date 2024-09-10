return {
  'barrett-ruth/live-server.nvim',
  cond = not vim.g.vscode,
  build = 'npm install -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  opts = {},
}
