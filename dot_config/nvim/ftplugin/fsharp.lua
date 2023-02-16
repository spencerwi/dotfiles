vim.o.expandtab = true
vim.o.sw = 4
vim.o.sts = 4
vim.o.ts = 4

local command_center = require('command_center')
command_center.remove({
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

command_center.add({
	{
		description = 'Run tests',
		cmd = function()
			require('FTerm').scratch({ cmd = 'dotnet test' })
		end,
		keybindings = {'n', '<leader>t', {noremap=true, silent=true}}
	},
})
