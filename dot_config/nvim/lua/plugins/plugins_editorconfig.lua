if vim.fn.has('nvim-0.9') then
	-- Neovim >=0.9 has editorconfig support built in
	vim.g.editorconfig = true
	return {}
else
	return {"editorconfig/editorconfig-vim"}
end
