Colorscheme = 'gruvbox'

return {
	{
		'catppuccin/nvim',
		name = 'catppuccin',
		cond = (not vim.g.vscode) and (Colorscheme == 'catppuccin'),
		priority = 1000,
		config = function()
			vim.cmd.colorscheme(Colorscheme)
		end,
	},
	{
		'ellisonleao/gruvbox.nvim',
		priority = 1000,
		cond = (not vim.g.vscode) and (Colorscheme == 'gruvbox'),
		config = function()
			vim.cmd.colorscheme(Colorscheme)
		end,
	}
}
