<!-- Wrap an input with a label -->

<template lang='pug'>

.field(:class='classes')

	//- Put the input within the label to associate it
	label(v-if='label')

		//- Render the label text above or left of the input
		.text(v-html='label' v-if='labelPosition != "right"')

		//- The input is rendered here
		slot

		//- Render the label text to the right of the input
		.text(v-html='label' v-if='labelPosition == "right"')

	//- If no label, just render the slotted input
	slot(v-else)

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default

	props:

		# The label text
		label: String

		# Adjust where the label is rendered relative to the input
		labelPosition:
			type: String
			default: 'top'

	computed:

		# CSS classes
		classes: -> [
			"label-#{@labelPosition}"
		]

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

// When aligning the label to left or right, use flex
.label-left
.label-right
	label
		flex-v-center()

// Push input below top labels
.label-top .text
	display block
	margin-bottom 0.75em

	// Make bolder but smaller than body font
	font-weight 600
	font-size 0.75em

// Push the text to the side of the input
.label-right .text
	margin-left 0.75em
.label-left .text
	margin-right 0.75em

</style>
