vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.smarttab = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.breakindent = true
vim.opt.scrolloff = 4
vim.opt.guicursor = 'n-v-c-i:block-Cursor'
vim.opt.showmode = false
vim.opt.inccommand = 'split'
vim.opt.incsearch = true
vim.opt.signcolumn = 'yes'
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.keymap.set('n', '<esc>', '<cmd>noh<cr>')

vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd('InsertEnter', {
	callback = function()
		vim.diagnostic.enable(false)
	end,
})

vim.api.nvim_create_autocmd('BufWrite', {
	callback = function()
		vim.diagnostic.enable(true)
	end,
})
