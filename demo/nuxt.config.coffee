# Use Cloak to make boilerplate
{ mergeConfig, makeBoilerplate, isDev, isGenerating } = require '@bkwld/cloak'
boilerplate = makeBoilerplate
	siteName: 'cloak-copy'
	cms: '@nuxt/content'
	srcsetWidths: [ 1920, 1440, 1024, 768, 425, 210 ]

# Nuxt config
module.exports = mergeConfig boilerplate,



	buildModules: [
	]

	modules: [
		'@nuxt/content'
		'vue-unorphan/nuxt/module'
		'vue-balance-text/nuxt/module'
	]

	plugins: [
		{ src: 'plugins/components' }
	]


	# Expect specially slug-ed towers to exist that will be loaded by error.vue
	generate: fallback: true

	# Customize component autoloading
	components: [
		...boilerplate.components
		'~/components/pages' # Don't require "pages" prefix
	]


	# Add production internal URL
	anchorParser:
		internalUrls: [
			# /^https?:\/\/(www\.)?domain\.com/
		]

