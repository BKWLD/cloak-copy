<!-- Demo of basic copy block -->

<template lang='pug'>

nuxt-content(:document='page')

</template>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<script lang='coffee'>
import pageMixin from '@bkwld/cloak/mixins/page'

export default

	mixins: [ pageMixin ]

	# Get page content
	asyncData: ({ app, params, $content }) ->
		page = await $content('home').fetch()
		console.log page
		return { page }

</script>

<!-- ––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– -->

<style lang='stylus' scoped>

h1, h2
	margin-top 1.5em
	margin-bottom 0.5em

.cloak-copy-wysiwyg
	border 1px dashed grey
	padding 1em

</style>
