###
Render a wysiwyg component field using block data
###
export default
	functional: true
	props: block: Object
	render: (create, { props: { block }, data }) ->
		create 'cloak-copy-wysiwyg', {
			...data
			props:
				html: block.body
				balanceText: block.balanceText
				unorphan: block.unorphan
		}
