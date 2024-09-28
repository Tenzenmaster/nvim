Colorscheme = 'everforest'

return {
	{
		'catppuccin/nvim',
		name = 'catppuccin.nvim',
		cond = not vim.g.vscode,
		priority = 1000,
	},
	{
		'ellisonleao/gruvbox.nvim',
		priority = 1000,
		cond = not vim.g.vscode,
	},
	{
		'rebelot/kanagawa.nvim',
		cond = not vim.g.vscode,
		priority = 1000,
	},
	{
		'sainnhe/everforest',
		cond = not vim.g.vscode,
		priority = 1000,
		config = function()
			vim.g.everforest_enable_italic = true
			vim.g.everforest_background = 'soft'
		end,
	},
}
