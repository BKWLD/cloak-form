<!-- A single checkbox with label on right, like for opt ins -->

<template lang='pug'>

cloak-form-field.checkbox(:label='label' label-position='right')
	input.cloak-form-input(
		type='checkbox'
		v-bind='{ name, required, readonly, disabled }'
		v-model='state')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import inputMixin from '../mixins/input-mixin'
export default

	mixins: [ inputMixin ]

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

// Override default styling
input
	box-style()

	// Give the input dimensions
	square 1em
	flex-shrink 0

	// Add the checked style as a box inside the box
	position relative
	&:before
		content ''
		opacity 0
		position absolute
		top 2px
		left @top
		right @top
		bottom @top
		background currentColor
		border-radius 'calc(%s * 0.5)' % cloak-form-radius
		transition opacity .3s

	// Reveal it
	&:checked:before
		opacity 0.5
		transition-duration .1s

</style>
