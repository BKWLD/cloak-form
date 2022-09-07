<!-- A standard textfield input -->

<template lang='pug'>

cloak-form-input-label(:label='label')
	input(
		v-bind='{ placeholder, type, required, readonly, disabled }'
		v-model='state')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import inputMixin from '../mixins/input-mixin'
export default

	mixins: [ inputMixin ]

	props:

		# Standard HTML props
		type: String
		placeholder: String

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

input

	// Make padding proportional to the text size
	padding 0.75em 1em

	// Make border using shadow so it doesn't affect the layout when it changes
	border none
	border-radius cloak-form-radius
	box-shadow 0 0 0 1px currentColor

	// Fill container
	width 100%

	// Make the placholder a lower opacity version of current color
	&::placeholder
		color currentColor
		opacity 0.5

	// Customize the focus statate
	outline none
	&:focus
		box-shadow 0 0 0 2px currentColor

</style>
