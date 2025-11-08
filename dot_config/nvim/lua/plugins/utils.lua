return {
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
		ft = 'clojure'
	},
	{
		"f-person/auto-dark-mode.nvim",
		opts = {
			set_dark_mode = function()
				vim.api.nvim_set_option_value("background", "dark", {})
				vim.cmd('colors catppuccin')
			end,
			set_light_mode = function()
				vim.api.nvim_set_option_value("background", "light", {})
				vim.cmd('colors delek')
			end
		}
	}
}
