###
Render a password field as a textfield with a predefined type
###
import Textfield from './textfield'
export default
	functional: true

	props: {
		...Textfield.props
	}

	# Passthrough most props to textfield
	render: (create, { data, props }) ->
		create Textfield, {
			...data

			# Append the password class
			staticClass: ['cloak-form-password', data.staticClass].join(' ').trim()

			# Switch the textfield type
			props: {
				...props
				type: 'password'
			}
		}
