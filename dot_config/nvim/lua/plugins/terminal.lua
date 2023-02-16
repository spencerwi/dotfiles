return {
	"numToStr/FTerm.nvim",
	dependencies = {'gfeiyou/command_center.nvim'},
	config = function()
		local command_center = require('command_center')
		command_center.add({
			{
				description = 'Toggle floating terminal',
				cmd = '<cmd>lua require("FTerm").toggle()<CR>',
				keybindings = {'n', 'gt', {noremap=true, silent=true}}
			}
		})
	end
}
