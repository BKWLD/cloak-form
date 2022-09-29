<!-- A standard textfield input -->

<template lang='pug'>

cloak-form-field.cloak-form-textfield(:label='label')
	input.cloak-form-input(
		v-bind=`{
			name,
			placeholder,
			type,
			required,
			readonly,
			disabled,
			autocomplete,
			maxlength, }`
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

.cloak-form-input
	input-box-style()

</style>
