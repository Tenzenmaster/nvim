if true then return {} end

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup()

    vim.keymap.set('n', '<leader>hq', function() harpoon:list():add() end)
   vim.keymap.set('n', '<leader>hl', function()
      harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set('n', '<leader>ha', function() harpoon:list():select(1) end)
    vim.keymap.set('n', '<leader>hs', function() harpoon:list():select(2) end)
    vim.keymap.set('n', '<leader>hd', function() harpoon:list():select(3) end)
    vim.keymap.set('n', '<leader>hf', function() harpoon:list():select(4) end)
    vim.keymap.set('n', '<leader>he', function() harpoon:list():next() end)
    vim.keymap.set('n', '<leader>hr', function() harpoon:list():prev() end)
  end,
}
