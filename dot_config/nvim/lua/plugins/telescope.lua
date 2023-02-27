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
		"gfeiyou/command-center.nvim",
		lazy = false,
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function() 
			require('telescope').load_extension('command_center')
			local command_center = require('command_center')
			vim.keymap.set('n', '<leader>a', '<cmd>Telescope command_center<CR>')
			local keymap_opts = {noremap=true, silent=true}
			command_center.add({
				{
					description = 'Find files',
					cmd = '<CMD>Telescope find_files<CR>',
					keybindings = {'n', '<C-t>', keymap_opts}
				},
				{
					description = 'Switch buffers',
					cmd = '<CMD>Telescope buffers<CR>',
					keybindings = {'n', '<leader>b', keymap_opts}
				},
				{
					description = 'Grep in files',
					cmd = '<CMD>Telescope live_grep<CR>',
					keybindings = {'n', '<leader>f', keymap_opts}
				},
				{
					description = 'Recent locations',
					cmd = '<CMD>Telescope jumplist<CR>',
					keybindings = {'n', 'gj', keymap_opts}
				}
			})
		end
	},
}
