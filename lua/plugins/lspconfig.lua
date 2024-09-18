return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'nvim-telescope/telescope.nvim',
  },
  cond = not vim.g.vscode,
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', 'gd', builtin.lsp_definitions)
    vim.keymap.set('n', 'gr', builtin.lsp_references)
    vim.keymap.set('n', 'gI', builtin.lsp_implementations)
    vim.keymap.set('n', '<leader>D', builtin.lsp_type_definitions)
    vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols)
    vim.keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)

    local servers = {
      lua_ls = {},
      clangd = {},
      pyright = {},
      html = {},
      cssls = {},
      ts_ls = {},
      jdtls = {},
      rust_analyzer = {},
      omnisharp = {
        cmd = { 'dotnet', '$HOME/.local/share/nvim/mason/bin/omnisharp' },
      },
    }

    require('mason').setup({})
    require('mason-lspconfig').setup({
      ensure_installed = vim.tbl_keys(servers),
    })

    for server_name, server_config in pairs(servers) do
      require('lspconfig')[server_name].setup(server_config)
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
