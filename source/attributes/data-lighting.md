# data-lighting

```html
<mr-app data-lighting="...???true"> ... </mr-app>
```

Lighting state can be attached to an [`mr-app`](/docs/mr-app) using `data-lighting`:

### `data-lighting`
Specifies the global lighting conditions.

- `enabled`: enables or disables global lighting is enabled
  - default: `true`
- `shadows`: enables or disables shadows
  - default: `true`
  - _note: always disabled on mobile for performance reasons_
- `color`: the color of the global lighting
  - default: `#fff`
- `intensity`: how bright the lighting is
  - default: `1`
- `radius`: the shadow radius
  - default: `5`
