# @cloak-app/copy

Cloak components for rendering WYSIWYG text.

- [View demo](https://cloak-copy.netlify.app/)
- [Edit CodeSandbox](https://githubbox.com/BKWLD/cloak-copy)

```vue
<cloak-copy balance-text content='
  <p>This <a href="/">link</a> uses v-parse-anchors.</p>
'></cloak-copy>
```

## Install

1. Install with `yarn add @cloak-app/copy`
2. Add to `nuxt.config` with `buildModules: ['@cloak-app/copy']`

### Project Dependencies

- Expects that [vue-routing-anchor-parser](https://github.com/BKWLD/vue-routing-anchor-parser) is configured
- `.wyswiwyg` styles (included in Cloak via [`bukwild-stylus-library/boilerplate`](https://github.com/BKWLD/stylus-library/blob/master/boilerplate.styl)).
- `.max-w*` styles (included in Cloak via `whitespace.styl`)

### Module Options

- `cloak.copy:`
  - `maxWidthClass` - The default max-width class to use for the block.
  - `embededEntriesQuery`
  - `embededEntriesRenderer`

## Components

### `cloak-copy`

This is a generic copy renderer that can be used by other Cloak components so they can stay ignorant of the CMS.  For instance, a FAQ component with a CMS-specific adapater.  In this case, the FAQ component can just pass along the `content` content it was provided to `cloak-copy` and never know whether it is rendering markup from Redactor or rich text from Contentful.

- props:
  - `content` - Either an HTML string or a Contentful rich text JSON document
  - `balanceText` - Boolean, enables [vue-balance-text](https://github.com/BKWLD/vue-balance-text)
  - `unorphan` - Boolean, enables [vue-unorphan](https://github.com/BKWLD/vue-unorphan)

### `cloak-copy-block`

Renders a CMS non-specific `cloak-copy` instance within a `max-w` class.

- props:
  - `content` - String, the html content to be rendered
  - `balanceText` - See above
  - `unorphan` - See above
  - `maxWidthClass` - A `max-w-*` class to apply to the block

### `cloak-copy-wysiwyg`

Takes `content` and wraps it with default wysiwyg styling.

- props:
  - `content` - String, the html content to be rendered
  - `balanceText` - See above
  - `unorphan` - See above

### `cloak-copy-rich-text`

Renders Contentful Rich Text JSON.

- props:
  - `content` - Object, the content to be rendered
  - `balanceText` - See above
  - `unorphan` - See above
  - `embededEntriesQuery` - String (docs TODO)
  - `embededEntriesRenderer` - Function (docs TODO)

## Contributing

Run `yarn dev` to open a Nuxt dev build of [the demo directory](./demo).
