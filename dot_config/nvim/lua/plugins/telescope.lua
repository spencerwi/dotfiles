return {
	{ -- fuzzy searcher for LSP/Treesitter stuff
		'nvim-telescope/telescope.nvim',
		dependencies = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
	},

	{ -- Use Telescope for vim.ui.select
		'nvim-telescope/telescope-ui-select.nvim',
		dependencies = {{'nvim-telescope/telescope.nvim'}},
		config = function()
			require('telescope').load_extension('ui-select')
		end
	},

	-- Nice command palette
	{
		"FeiyouG/commander.nvim",
		lazy = false,
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function() 
			local commander = require('commander')
			require('telescope').load_extension('commander')
			commander.setup({
				integration = {
					telescope = {
						enabled = true
					}
				}
			})
			vim.keymap.set('n', '<leader>a', '<cmd>Telescope commander<CR>')
			local keymap_opts = {noremap=true, silent=true}
			commander.add({
				{
					desc = 'Find files',
					cmd = '<CMD>Telescope find_files<CR>',
					keys = {'n', '<C-t>', keymap_opts}
				},
				{
					desc = 'Switch buffers',
					cmd = '<CMD>Telescope buffers<CR>',
					keys = {'n', '<leader>b', keymap_opts}
				},
				{
					desc = 'Grep in files',
					cmd = '<CMD>Telescope live_grep<CR>',
					keys = {'n', '<leader>f', keymap_opts}
				},
				{
					desc = 'Recent locations',
					cmd = '<CMD>Telescope jumplist<CR>',
					keys = {'n', 'gj', keymap_opts}
				},
				{
					desc = 'Search help tags',
					cmd = '<CMD>Telescope help_tags<CR>'
				}
			})
		end
	},
}
