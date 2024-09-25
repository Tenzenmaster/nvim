Colorscheme = 'kanagawa'

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
	}
}
