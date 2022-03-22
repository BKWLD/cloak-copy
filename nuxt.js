import { join } from 'path'
export default function() {

	// Have Nuxt transpile resources
	this.options.build.transpile.push('@cloak/copy')

	// Allow components to be auto-imported by Nuxt
	this.nuxt.hook('components:dirs', dirs => {
		dirs.push({
			path: join(__dirname, './adapters'),
			extensions: ['js', 'coffee'],
			prefix: 'cloak-copy',
			level: 2,
		})
		dirs.push({
			path: join(__dirname, './components'),
			extensions: ['vue', 'js', 'coffee'],
			prefix: 'cloak-copy',
			level: 2,
		})
	})

	// Relay package options to runtime config
	this.options.publicRuntimeConfig.cloak = {
		...this.options.publicRuntimeConfig.cloak,
		copy: {
			blockMaxWidthClass: 'max-w-medium',
			embededEntriesQuery: undefined,
			embededEntriesRenderer: undefined,
			...this.options.cloak?.copy,
		}
	}

	// Add unorphan and balance-text directive suppport
	this.addModule('vue-balance-text/nuxt/module')
	this.addModule('vue-unorphan/nuxt/module')
}

// Required for published modules
module.exports.meta = require('./package.json')
