###
Shared input behaviors
###
export default

	props:

		# Optional label
		label: String

		# Field name, falls back to label
		name:
			type: String
			default: -> @label

		# V-model value
		value: String | Boolean

		# Add html5 attributes
		required: Boolean
		readonly: Boolean
		disabled: Boolean

	# Sync external v-model
	data: -> state: @value
	watch:
		value: -> @state = @value
		state: -> @$emit 'input', @state
