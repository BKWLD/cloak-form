import { join } from 'path'
import defaultsDeep from 'lodash/defaultsDeep'
export default function() {

	// Have Nuxt transpile resources
	this.options.build.transpile.push('@cloak-app/form')

	// Allow components to be auto-imported by Nuxt
	this.nuxt.hook('components:dirs', dirs => {
		dirs.push({
			path: join(__dirname, './components'),
			extensions: ['vue', 'js', 'coffee'],
			prefix: 'cloak-form',
			level: 2,
		})
	})

	// Configure style-resources module to append package definitions
	defaultsDeep(this.options, { styleResources: { stylus: [] }})
	this.options.styleResources.stylus
		.push(join(__dirname, 'styles/definitions.styl'))
}

// Required for published modules
module.exports.meta = require('./package.json')
