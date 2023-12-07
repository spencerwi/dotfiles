vim.g.mapleader = ',' -- This has to be set before lazy fires up to manage plugins
vim.g.do_filetype_lua = 1
require('lazy_plugins')
vim.cmd('source ~/.vimrc')
