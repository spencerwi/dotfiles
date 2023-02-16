return {
	{
		'mfussenegger/nvim-dap',
		dependencies = {'gfeiyou/command-center.nvim'},
		init = function() 
			local dap = require('dap')

			dap.adapters.lldb = {
				type = 'executable',
				command = '/usr/bin/lldb-vscode-15',
				name = 'lldb'
			}

			dap.adapters.rust_lldb = {
				type = 'executable',
				command = '/home/spencerwi/.cargo/bin/rust-lldb',
				name = 'rust_lldb'
			}

			dap.configurations.cpp = {
				{
					name = 'Launch',
					type = 'lldb',
					request = 'launch',
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = false,
					args = {}
				}
			}
			dap.configurations.c = dap.configurations.cpp
			dap.configurations.rust = {
				{
					name = 'Attach to process',
					type = 'lldb',
					request = 'attach',
					pid = require('dap.utils').pick_process,
					{}
				}
			}
			-- dap.configurations.rust = dap.configurations.cpp

			-- Nicer breakpoint marker
			vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
			vim.fn.sign_define('DapStopped', {text='➤', texthl='', linehl='', numhl=''})

			local keymap_opts = {noremap = true, silent = true}
			local command_center = require('command_center')
			command_center.add({
				{
					description = '(Debug) Run',
					cmd = function() 
						dap.continue()
						dap.repl.open()
					end,
					keybindings = {'n', '<leader>dr', keymap_opts}
				},
				{
					description = '(Debug) Stop debugging',
					cmd = dap.terminate,
					keybindings = {'n', '<leader>dn', keymap_opts}
				},
				{
					description = '(Debug) Up in stack',
					cmd = dap.up,
					keybindings = {'n', '<leader>du', keymap_opts}
				},
				{
					description = '(Debug) Down in stack',
					cmd = dap.down,
					keybindings = {'n', '<leader>dd', keymap_opts}
				},
				{
					description = '(Debug) Step Over',
					cmd = dap.step_over,
					keybindings = {'n', '<leader>dn', keymap_opts}
				},
				{
					description = '(Debug) Step Into',
					cmd = dap.step_into,
					keybindings = {'n', '<leader>di', keymap_opts}
				},
				{
					description = '(Debug) Toggle Breakpoint',
					cmd = dap.toggle_breakpoint,
					keybindings = {'n', '<leader>db', keymap_opts}
				},
				{
					description = '(Debug) Conditional Breakpoint',
					cmd = function()
						dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
					end,
					keybindings = {'n', '<leader>dcb', keymap_opts}
				},
				{
					description = '(Debug) Open REPL',
					cmd = dap.repl.open,
					keybindings = {'n', '<leader>de', keymap_opts}
				}
			})
		end
	},
}
