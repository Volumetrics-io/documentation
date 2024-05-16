# data-position

```html
<mr-entity data-position="0 -1 0.5" data-rotation="90 -30 180"></mr-entity>
<mr-light data-position="0 -0.1 0.15" color="white" intensity="0.5"></mr-light>
```

Position can be attached to an `mr-entity` using `data-position`, it has a specific 3D value:

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
