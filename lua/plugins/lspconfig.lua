return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    local servers = {
      'lua_ls',
      'clangd',
      'pyright',
      'html',
      'cssls',
      'ts_ls',
      'jdtls',
    }

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = servers,
    })

    for _, server in pairs(servers) do
      require('lspconfig')[server].setup({})
    end
  end,
}
