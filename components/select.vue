<!-- Style a select menu -->

<template lang='pug'>

cloak-form-field.cloak-form-select(:label='label')

	//- Used for aligning the toggle icon
	.select-wrapper

		select.cloak-form-input(
			v-bind=`{
				name,
				required,
				readonly,
				disabled,
				autocomplete }`
			v-model='state')

			option(
				v-for='option in options'
				:key='option.value'
				:value='option.value') {{ option.label }}

		//- The icon that indicates this is a select
		.toggle-icon: slot(name='toggle-icon')
			svg.chevron(
				xmlns='http://www.w3.org/2000/svg'
				width='512' height='512' viewBox='0 0 512 512')
				path(d='m512 176-64-64-192 192-192-192-64 64 255.999 256z')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import inputMixin from '../mixins/input-mixin'
export default

	mixins: [ inputMixin ]

	props:

		# Array of objects contianing label and value properties
		options: Array

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

.select-wrapper
	position relative

.cloak-form-input
	input-box-style()

.toggle-icon
	v-center()
	right cloak-form-input-padding-h

.chevron
	fill currentColor
	square 0.75em

</style>
