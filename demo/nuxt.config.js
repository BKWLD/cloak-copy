// Nuxt config
export default {

	// Load boilerplate and this package
	buildModules: [
		'@cloak-app/boilerplate/nuxt',
		'@cloak-app/demo-theme/nuxt',
		'../nuxt',
	],

	// Set the site name
	cloak: {
		boilerplate: {
			siteName: '@cloak-app/copy demo',
		}
	},

	// @nuxt/content can't be loaded from module
	modules: ['@nuxt/content'],

}
