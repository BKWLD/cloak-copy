# Delegate rendering of copy depending on what kind of data is passed in
import Wysiwyg from './wysiwyg'
export default
	functional: true

	# Pass the HTML in
	props:
		body: String | Object
		unorphan: Boolean
		balanceText: Boolean

	# Render a div with wsywiyg class and props
	render: (create, { props, data }) ->
		return unless props.body
		switch typeof props.body

			# For redactor html. Using explicit component here because it's light
			# and it allows me to leave it as a functional component. I discovered
			# that functional components, when rendered like this, fail to render
			# during SSG.
			when 'string' then create Wysiwyg, {
				...data
				props: {
					...props
					html: props.body
					body: undefined
				}
			}

			# For Contentful rich text. I'm intentionally avoiding importing
			# the rich-text component because it's heavy. This is possible because
			# it's not a functional component.
			when 'object' then create 'cloak-copy-rich-text', {
				...data
				props: {
					...props
					doc: props.body
					body: undefined
				}
			}
