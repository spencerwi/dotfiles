return {
	cmd = {'kotlin-language-server'},
	filetypes = {'kotlin'},
	root_markers =  {
		'settings.gradle', -- Gradle (multi-project)
		'settings.gradle.kts', -- Gradle (multi-project)
		'build.xml', -- Ant
		'pom.xml', -- Maven
		'build.gradle', -- Gradle
		'build.gradle.kts' -- Gradle
	}
}
