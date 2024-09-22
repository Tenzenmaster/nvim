return {
	'mfussenegger/nvim-dap',
	dependencies = { 'neovim/nvim-lspconfig' },
	config = function()
		local dap = require('dap')

		dap.adapters.gdb = {
			type = 'executable',
			command = 'gdb',
			args = {
				'--interpreter=dap',
				'--eval-command',
				'set print pretty on',
			}
		}

		vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)
		vim.keymap.set('n', '<leader>do', dap.step_over)
		vim.keymap.set('n', '<leader>di', dap.step_into)
		vim.keymap.set('n', '<leader>dr', dap.repl.open)
	end,
}
