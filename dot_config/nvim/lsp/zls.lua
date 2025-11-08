return {
	cmd = function () vim.fs.normalize('~/apps/zls/zls') end,
	filetypes = {'zig', 'zir'},
	root_markers = {'zls.json', 'build.zig', '.git'}
}
