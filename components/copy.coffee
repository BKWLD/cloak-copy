# Delegate rendering of copy depending on what kind of data is passed in
export default
	name: 'Copy'
	functional: true

	# Pass the HTML in
	props:
		body: String | Object
		unorphan: Boolean
		balanceText: Boolean

	# Render a div with wsywiyg class and props
	render: (create, { props, data }) ->
		return unless props.body

		# Decide which component to render.  I'm intentionally avoiding importing
		# the rich-text component because it's heavy.
		switch typeof props.body

			# For redactor html
			when 'string' then create 'cloak-copy-wysiwyg', {
				...data
				props: {
					...props
					html: props.body
					body: undefined
				}
			}

			# For contentful rich text
			when 'object' then create 'cloak-copy-rich-text', {
				...data
				props: {
					...props
					doc: props.body
					body: undefined
				}
			}
