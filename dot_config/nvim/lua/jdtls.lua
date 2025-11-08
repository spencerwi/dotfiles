return {
	cmd = {vim.fs.normalize('~/apps/jdt-language-server/bin/jdtls')},
	filetypes = {'java'},
	root_markers = { 
		{'.git', 'build.gradle', 'build.gradle.kts'}, -- multi-module projects
		{
			'build.xml', -- ant
			'pom.xml', -- maven
			'settings.gradle', -- gradle
			'settings.gradle.kts' -- gradle
		}
	}
}
