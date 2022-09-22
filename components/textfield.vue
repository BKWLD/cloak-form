<!-- A standard textfield input -->

<template lang='pug'>

cloak-form-field.textfield(:label='label')
	input.cloak-form-input(
		v-bind='{ name, placeholder, type, required, readonly, disabled }'
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
	box-style()

	// Make padding proportional to the text size
	padding 0.75em 1em

	// Fill container
	width 100%

</style>
