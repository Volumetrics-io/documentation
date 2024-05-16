# data-camera

```html
<mr-app data-camera="mode:perspective; startPos:0 2 3"> ... </mr-app>
```

Camera can be attached to an [`mr-app`](/doc/mr-app) using `data-camera`:

### `data-camera`
Specifies the camera setup.

- `mode`:  type when viewing on a 2D screen.
  - default: `orthographic` (default)
  - options: `orthographic`, `perspective`
- `startPos`: the startingPosition of the camera/user in the 3D scene.
  - default: `0 0 1`
