vim.g.mapleader = ',' -- This has to be set before lazy fires up to manage plugins
vim.g.do_filetype_lua = 1
require('lazy_plugins')
vim.cmd('source ~/.vimrc')

vim.lsp.enable({
	'emmet_ls',
	'fsautocomplete',
	'gleam',
	'intelephense',
	'kotlin_language_server',
	'ocamllsp',
	'rust_analyzer',
	'ts_ls',
	'zls'
})
vim.api.nvim_create_user_command(
	'LspLog',
	function() 
		vim.cmd('tabnew ' .. vim.lsp.get_log_path())
	end,
	{}
)
