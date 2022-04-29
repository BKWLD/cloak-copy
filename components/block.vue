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

		# Block props
		maxWidth:
			type: String
			default: -> @$config.cloak?.copy?.blockMaxWidth || ''

	computed:

		# Root classes
		classes: -> @maxWidth # Expect to match a CSS class

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped></style>
