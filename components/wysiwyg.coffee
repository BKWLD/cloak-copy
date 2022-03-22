# Render HTML content from craft.  This is not a functional component because
# this prevented it from being rendered by the generic Copy component when
# SSGed.
export default

	# Pass the HTML in
	props:
		html: String

		# Enable these directives. They are expected to already be globally
		# imported
		unorphan: Boolean
		balanceText: Boolean

	# Render a div with wsywiyg class and props
	render: (create) ->
		return unless @html
		create 'div', {

			# Automatically add directives
			directives: [
				{ name: 'parse-anchors' }
				{ name: 'unorphan' } if @unorphan
				{ name: 'balance-text', modifiers: children: true } if @balanceText
			].filter (val) -> !!val

			# Append the WYSIWYG class
			class: ['wysiwyg']

			# Render the HTML
			domProps: innerHTML: wrapTables @html
		}

# Add a wrapping div around HTML instances so they can be horizontally scrolled
wrapTables = (html) ->
	html
	.replace '<table>', '<div class="table-wrap"><table>'
	.replace '</table>', '</table></div>'
