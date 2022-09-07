###
Shared input behaviors
###
export default

	props:

		# Placeholder as well as input name
		label: String

		# V-model value
		value: String

		# Add html5 attributes
		required: Boolean
		readonly: Boolean
		disabled: Boolean

	# Sync external v-model
	data: -> state: @value
	watch:
		value: -> @state = @value
		state: -> @$emit 'input', @state
