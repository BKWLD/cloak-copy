# Use Cloak to make boilerplate
{ mergeConfig, makeBoilerplate, isDev, isGenerating } = require '@bkwld/cloak'
boilerplate = makeBoilerplate
	siteName: '@cloak/copy demo'
	cms: '@nuxt/content'

# Nuxt config
module.exports = mergeConfig boilerplate,

	# Load this package's nuxt config
	modules: [
		'@nuxt/content'
		'@cloak/copy/nuxt'
	]

	# @nuxt/content
	content:
		liveEdit: false

	# Enable dev tools in prod
	vue: config:
		productionTip: false
		devtools: true
