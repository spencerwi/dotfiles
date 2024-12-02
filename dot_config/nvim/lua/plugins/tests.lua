local keymap_opts = {noremap = true, silent = true}
return {
	{ -- runs tests
		"nvim-neotest/neotest",
		dependencies = {
			"nvim-neotest/nvim-nio",
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			--"Issafalcon/neotest-dotnet", -- Commented out until it gains F# testing support; using the fork for now
			"Nsidorenco/neotest-dotnet"
		},
		init = function() 
			require('neotest').setup({
				adapters = {
					require('neotest-dotnet')
				}
			})
			local commander = require('commander')
			local keymap_opts = {noremap = true, silent = true}
			commander.add({
				{
					desc = '(Neotest) Run nearest test',
					cmd = function() 
						require('neotest').run.run()
					end,
					keys = {'n', '<leader>t', keymap_opts}
				},
				{
					desc = '(Neotest) Debug nearest test',
					cmd = function() 
						require('neotest').run.run({strategy = "dap"})
					end,
					keys = {'n', '<leader>dt', keymap_opts}
				},
			})
		end
	}
}
