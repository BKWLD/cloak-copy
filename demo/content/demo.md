# [@cloak-app/copy](https://github.com/BKWLD/cloak-copy)

## Passing in an HTML string to generic component

<cloak-copy content='
	<h3>I am a header</h3>
	<p>This text is <strong>important</strong></p>
'></cloak-copy>


```vue
<cloak-copy content='
	<h3>I am a header</h3>
	<p>This text is <strong>important</strong></p>
'></cloak-copy>
```


## Passing in an HTML string to wysiwyg component

<cloak-copy-wysiwyg content='
	<h3>I am a header</h3>
	<p>This text is <strong>important</strong></p>
'></cloak-copy-wysiwyg>


```vue
<cloak-copy-wysiwyg content='
	<h3>I am a header</h3>
	<p>This text is <strong>important</strong></p>
'></cloak-copy-wysiwyg>
```


## Using the Craft adapter

<cloak-copy-craft-block :block='{
	content: "<h3>I am a header</h3><p>This text is <strong>important</strong></p>",
	balanceText: false,
	unorphan: false,
}'></cloak-copy-craft-block>

```vue
<cloak-copy-craft-block :block='{
	content: "<h3>I am a header</h3><p>This text is <strong>important</strong></p>",
	balanceText: false,
	unorphan: false,
}'></cloak-copy-craft-block>
```


## Using Contentful rich-text component through generic component

<cloak-copy :content='{
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
}'></cloak-copy>

```vue
<cloak-copy :content='{
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
}'></cloak-copy>
```
