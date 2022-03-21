# @cloak/copy

Cloak components for rendering WYSIWYG text.  [View demo](https://cloak-copy.netlify.app/).

## Components

### `cloak-copy-wysiwyg`

Takes `html` and wraps it with default `wysiwyg` styling.

- props:
  - `html` - String, the html content to be rendered
  - `balanceText` - Boolean, enables [vue-balance-text](https://github.com/BKWLD/vue-balance-text)
  - `unorphan` - Boolean, enables [vue-unorphan](https://github.com/BKWLD/vue-unorphan)

### `cloak-copy-rich-text`

Renders Contentful Rich Text JSON.

- props:
  - `doc` - Object, the content to be rendered
  - `embededEntriesQuery` - String (docs TODO)
  - `embededEntriesRenderer` - Function (docs TODO)
  - `balanceText` - See above
  - `unorphan` - See above

## Adapters

### `cloak-copy-craft-block`

Renders a `cloak-copy-wyswiyg` component.

- props:
  - `block` - Object, with expecting these keys:
    - `body` - String, the html content to be rendered
    - `balanceText` - See above
    - `unorphan` - See above

