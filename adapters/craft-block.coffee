###
Take a Craft block and render a copy block
###
export default
	functional: true
	props: block: Object
	render: (create, { props: { block }, data }) ->
		create 'cloak-copy-block', {
			...data
			props: block
		}
