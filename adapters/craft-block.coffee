###
Render the form block from Craft block data
###
export default
	functional: true
	props: block: Object
	render: (create, { props: { block }, data }) ->
		create 'cloak-form-block', {
			...data
			props: block
		}
