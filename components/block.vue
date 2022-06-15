<!-- Renders a copy instance inside of a block wrapper -->

<template lang='pug'>

section.copy-block(:class='classes')
	cloak-copy(v-bind='{ content, unorphan, balanceText }')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default

	props:

		# Copy props
		content: String | Object
		unorphan: Boolean
		balanceText: Boolean
		textAlign: String

		# Block props
		maxWidth:
			type: String
			default: -> @$config.cloak?.copy?.blockMaxWidth || ''

	computed:

		# Root classes
		classes: -> [
			@maxWidth # Expect to match a CSS class
			"text-align-#{@textAlign}" if @textAlign
		].filter (val) -> !!val

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

.text-align
	&-left
		text-align left
	&-center
		text-align center
	&-right
		text-align right

</style>
