return {
	{
		'mfussenegger/nvim-dap',
		dependencies = {'FeiyouG/commander.nvim'},
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
			local commander = require('commander')
			commander.add({
				{
					desc = '(Debug) Run',
					cmd = function() 
						dap.continue()
						dap.repl.open()
					end,
					keys = {'n', '<leader>dr', keymap_opts}
				},
				{
					desc = '(Debug) Stop debugging',
					cmd = dap.terminate,
					keys = {'n', '<leader>dn', keymap_opts}
				},
				{
					desc = '(Debug) Up in stack',
					cmd = dap.up,
					keys = {'n', '<leader>du', keymap_opts}
				},
				{
					desc = '(Debug) Down in stack',
					cmd = dap.down,
					keys = {'n', '<leader>dd', keymap_opts}
				},
				{
					desc = '(Debug) Step Over',
					cmd = dap.step_over,
					keys = {'n', '<leader>dn', keymap_opts}
				},
				{
					desc = '(Debug) Step Into',
					cmd = dap.step_into,
					keys = {'n', '<leader>di', keymap_opts}
				},
				{
					desc = '(Debug) Toggle Breakpoint',
					cmd = dap.toggle_breakpoint,
					keys = {'n', '<leader>db', keymap_opts}
				},
				{
					desc = '(Debug) Conditional Breakpoint',
					cmd = function()
						dap.set_breakpoint(vim.fn.input('Breakpoint condition: '))
					end,
					keys = {'n', '<leader>dcb', keymap_opts}
				},
				{
					desc = '(Debug) Open REPL',
					cmd = dap.repl.open,
					keys = {'n', '<leader>de', keymap_opts}
				}
			})
		end
	},
}
