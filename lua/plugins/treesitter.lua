return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'lua',
        'luadoc',
        'vim',
        'vimdoc',
        'c',
        'cpp',
        'cmake',
        'java',
        'python',
        'html',
        'css',
        'javascript',
        'typescript',
        'markdown',
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
