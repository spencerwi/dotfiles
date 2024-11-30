vim.opt_local.expandtab = true
vim.opt_local.sw = 4
vim.opt_local.sts = 4
vim.opt_local.ts = 4

local commander = require('commander')
-- commander.remove({
-- 		{
-- 			description = 'Test nearest',
-- 			cmd = '<CMD>TestNearest<CR>',
-- 			keybindings = {'n', '<leader>t', {noremap=true, silent=true}}
-- 		},
-- 		{
-- 			description = 'Test file',
-- 			cmd = '<CMD>TestFile<CR>'
-- 		},
-- 		{
-- 			description = 'Go to last test',
-- 			cmd = '<CMD>TestVisit<CR>'
-- 		},
-- 		{
-- 			description = 'Re-run last test',
-- 			cmd = '<CMD>TestLast<CR>'
-- 		},
-- })

if commander then
	commander.add({
		{
			description = 'Run tests',
			cmd = function()
				require('FTerm').scratch({ cmd = 'dotnet test' })
			end,
			keybindings = {'n', '<leader>t', {noremap=true, silent=true}}
		},
	})
end
