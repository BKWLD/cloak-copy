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

		# The max-width class
		maxWidthClass:
			type: String
			default: -> @$config.cloak?.copy?.blockMaxWidthClass || ''

	computed:

		# Root classes
		classes: -> @maxWidthClass

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped></style>
