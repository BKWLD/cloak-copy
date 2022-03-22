# Use Cloak to make boilerplate
{ mergeConfig, makeBoilerplate, isDev, isGenerating } = require '@bkwld/cloak'
boilerplate = makeBoilerplate
	siteName: '@cloak/copy demo'
	cms: '@nuxt/content'

# Nuxt config
module.exports = mergeConfig boilerplate,

	# Load CMS module
	modules: [
		'@nuxt/content'
	]

	# Load package
	buildModules: [
		'@cloak/copy/nuxt'
	]

	# @nuxt/content
	content:
		liveEdit: false

	# Enable dev tools in prod
	vue: config:
		productionTip: false
		devtools: true

	# Test setting runtime config
	cloak: copy: blockMaxWidthClass: 'max-w-small'
