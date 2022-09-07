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
			props: {
				...props
				type: 'password'
			}
		}
