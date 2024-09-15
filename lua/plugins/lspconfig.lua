return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  cond = not vim.g.vscode,
  config = function()
    local servers = {
      'lua_ls',
      'clangd',
      'pyright',
      'html',
      'cssls',
      'ts_ls',
      'jdtls',
      'rust_analyzer',
    }

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = servers,
    })

    for _, server in pairs(servers) do
      require('lspconfig')[server].setup({})
    end

    -- Godot GDScript
    local gdscript_config = {
      settings = {},
    }
    if vim.fn.has('win32') == 1 then
      gdscript_config['cmd'] = { 'ncat', 'localhost', os.getenv('GDScript_Port') or '6005' }
    end
    require('lspconfig').gdscript.setup(gdscript_config)

    if vim.fn.filereadable(vim.fn.getcwd() .. '/project.godot') == 1 then
      local addr = '/tmp/godot.pipe'
      if vim.fn.has('win32') == 1 then
        addr = '127.0.0.1:6004'
      end
      vim.fn.serverstart(addr)
    end
  end,
}
