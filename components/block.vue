<!-- Renders a form block -->

<template lang='pug'>

section.form-block(:class='classes') Heya world

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default

	props:

		# Combines horizontal padding and max-width rules
		maxWidth:
			type: String
			default: -> @$config.cloak?.form?.blockMaxWidth || ''

	computed:

		# Root classes
		classes: -> @maxWidth # Expect to match a CSS class

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

.form-block
	border 1px dashed currentColor
	padding 1em
	margin-v 1em

</style>
