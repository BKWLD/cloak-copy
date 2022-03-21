# [@cloak/copy](https://github.com/BKWLD/cloak-copy)

## Passing in an HTML string to wysiwyg component

<cloak-copy-wysiwyg html='
	<h3>I am a header</h3>
	<p>This text is <strong>important</strong></p>
'></cloak-copy-wysiwyg>


```vue
<cloak-copy-wysiwyg html='
	<h3>I am a header</h3>
	<p>This text is <strong>important</strong></p>
'></cloak-copy-wysiwyg>
```


## Using the Craft adapter

<cloak-copy-craft-block :block='{
	body: "<h3>I am a header</h3><p>This text is <strong>important</strong></p>",
	balanceText: false,
	unorphan: false,
}'></cloak-copy-craft-block>

```vue
<cloak-copy-craft-block :block='{
	body: "<h3>I am a header</h3><p>This text is <strong>important</strong></p>",
	balanceText: false,
	unorphan: false,
}'></cloak-copy-craft-block>
```


## Using Contentful rich-text component

<cloak-copy-rich-text :doc='{
	"nodeType": "document",
	"data": {},
	"content": [
		{
			"nodeType": "heading-3",
			"data": {},
			"content": [
				{
					"nodeType": "text",
					"value": "I am a header",
					"data": {},
					"marks": []
				}
			]
		},
		{
			"nodeType": "paragraph",
			"data": {},
			"content": [
				{
					"nodeType": "text",
					"value": "This text is ",
					"data": {},
					"marks": []
				},
				{
					"nodeType": "text",
					"value": "important",
					"data": {},
					"marks": [
						{"type": "bold" }
					]
				}
			]
		}
	]
}'></cloak-copy-rich-text>

```vue
<cloak-copy-rich-text :doc='{
	"nodeType": "document",
	"data": {},
	"content": [
		{
			"nodeType": "heading-3",
			"data": {},
			"content": [
				{
					"nodeType": "text",
					"value": "I am a header",
					"data": {},
					"marks": []
				}
			]
		},
		{
			"nodeType": "paragraph",
			"data": {},
			"content": [
				{
					"nodeType": "text",
					"value": "This text is ",
					"data": {},
					"marks": []
				},
				{
					"nodeType": "text",
					"value": "important",
					"data": {},
					"marks": [
						{"type": "bold" }
					]
				}
			]
		}
	]
}'></cloak-copy-rich-text>
```
