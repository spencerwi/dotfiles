local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
 if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
     "git",
     "clone",
     "--filter=blob:none",
     "--single-branch",
     "https://github.com/folke/lazy.nvim.git",
     lazypath,
   })
 end
vim.opt.runtimepath:prepend(lazypath)

require('lazy').setup({
	-- Color scheme
	require('colorscheme').lazy_spec,
	{import = 'plugins'},


	-- Git stuff
	{
		'tpope/vim-fugitive',
		dependencies = {'FeiyouG/commander.nvim'},
		init = function()
			local commander = require('commander')
			commander.add({
				{
						description = 'Git blame/annotate',
						cmd = '<CMD>Git blame<CR>'
				},
				{
						description = '(Git) Open file in browser',
						cmd = '<CMD>GBrowse<CR>'
				},
				{
						description = 'Git add',
						cmd = '<CMD>Git add<CR>'
				},
				{
						description = 'Git commit',
						cmd = '<CMD>Git commit<CR>'
				},
				{
						description = 'Git pull',
						cmd = '<CMD>Git pull<CR>'
				},
				{
						description = 'Git push',
						cmd = '<CMD>Git push<CR>'
				},
			})
		end
	},
	-- { -- nice git signs in the gutter
	-- 	'lewis6991/gitsigns.nvim',
	-- 	dependencies = {
	-- 		'nvim-lua/plenary.nvim'
	-- 	},
	-- 	config = function()
	-- 		require('gitsigns').setup {
	-- 			signs = {
	-- 				add = {text = '+'},
	-- 				change = {text = '~'},
	-- 				delete = {text = '-'}
	-- 			}
	-- 		}
	-- 	end
	-- },

	-- Utilities
	'tpope/vim-rhubarb',
	'benekastah/neomake',
	'tpope/vim-commentary',
	'tpope/vim-surround',
	
	{
		"klen/nvim-test",
		dependencies = {'FeiyouG/commander.nvim'},
		config = function()
			local commander = require('commander')
			commander.add({
				{
					description = 'Test nearest',
					cmd = '<CMD>TestNearest<CR>',
					keybindings = {'n', '<leader>t', {noremap=true, silent=true}}
				},
				{
					description = 'Test file',
					cmd = '<CMD>TestFile<CR>'
				},
				{
					description = 'Go to last test',
					cmd = '<CMD>TestVisit<CR>'
				},
				{
					description = 'Re-run last test',
					cmd = '<CMD>TestLast<CR>'
				},
			})
		end
	},

	-- Crystal-lang needs its own plugin, since there's no built-in syntax support
	'vim-crystal/vim-crystal',

	-- {
	-- 	'~/code/nvim/crystal.nvim',
	-- 	dependencies = {'nvim-treesitter/nvim-treesitter'},
	-- 	config = function()
	-- 		require('crystal-nvim').setup()
	-- 	end
	-- },

	-- FSharp also needs its own plugin, for the same reason
	--'PhilT/vim-fsharp',

	-- Kotlin also needs a plugin to add it as a filetype
	'udalov/kotlin-vim',

	-- Similarly, nim needs a plugin
	'zah/nim.vim',

	-- And one for pony-lang too
	'dleonard0/pony-vim-syntax',

	-- And for Gleam (an ML-like on the erlang BEAM vm)
	'gleam-lang/gleam.vim',
})
