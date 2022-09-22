<!-- Wrap an input with a label -->

<template lang='pug'>

.cloak-form-field(:class='classes')

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

// Add a default line-height for long labels that looks beter
.text
	line-height 1.3

// If checkable, make the label appear clickable
.text
	.checkbox &
	.checkboxes &
	.radios &
		cursor pointer

// Underline links in labels, like to privacy statements
.text :deep(a)
	text-decoration underline

// When aligning the label to left or right, use flex
.label-left
.label-right
	label
		flex-v-center()

// Push input below top labels
label-top-margin = 0.75em
label-top-font-size-adjustment = 0.75
.label-top .text
	display block
	margin-bottom label-top-margin

	// Make bolder but smaller than body font
	font-weight 600
	font-size 1em * label-top-font-size-adjustment

// Push the text to the side of the input a distance that matches the label-top
.label-right .text
	margin-left label-top-margin * label-top-font-size-adjustment
.label-left .text
	margin-right label-top-margin * label-top-font-size-adjustment

</style>
