<!-- Wrap an input with a label -->

<template lang='pug'>

.field

	label(v-if='label') {{ label }}

	//- The input is rendered here
	slot

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default

	props: label: String

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

label

	// Render on own line
	display block

	// Make bolder but smaller than body font
	font-weight 600
	font-size 0.75em

	// Push away from input
	margin-bottom 0.75em

</style>
