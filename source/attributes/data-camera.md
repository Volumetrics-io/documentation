# data-position

```html
<mr-entity data-position="0 -1 0.5" data-rotation="90 -30 180"></mr-entity>
<mr-light data-position="0 -0.1 0.15" color="white" intensity="0.5"></mr-light>
```

Position can be attached to an `mr-entity` using `data-position`, it has a specific 3D value:

### `data-camera`
Specifies the camera setup.

- `mode`:  type when viewing on a 2D screen.
  - default: `orthographic` (default)
  - options: `orthographic`, `perspective`
- `startPos`: the startingPosition of the camera/user in the 3D scene.
  - default: `0 0 1`
