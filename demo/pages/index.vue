<!-- Demo of basic copy block -->

<template lang='pug'>

nuxt-content(:document='page')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
export default

	# Get page content
	asyncData: ({ app, params, $content }) ->
		page = await $content('demo').fetch()
		return { page }

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

>>> h3
	font-weight bold

>>> .wysiwyg
	border 1px dashed grey
	padding 1em

</style>
