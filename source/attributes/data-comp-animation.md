# data-comp-animation

```html
<mr-model src="path/to/file" data-comp-animation="action: play; loop: true"></mr-entity>
```

Animation is achieved using the animation component, `data-comp-animation` on any [`mr-model`](/doc/mr-model):

## `action`

Handles the animation starting and stopping.

Values: `play`, `pause`, `stop`

## `clip`

Handles if a specific clip will play or all animation clips for the mesh will play.

Values: `1,2,3,...`

> If not set, plays all animation clips in the mesh. Otherwise just plays the specified one.

## `loop`

Handles how the animation loops for the model file. If set to `true`/`false` ignores the value of `loopMode`, otherwise acts as a numerical looping count.

Values: `true`, `false`, number >= 0

> if set to `true`/`false`, ignores the `loopMode` value

## `loopMode`

The format for how the looping should occur. Values are based on threejs defaults.

Values: `once`, `repeat`, and `pingpong`

> if set to `once`, ignores the `loop` value.

## `clampWhenFinished`

Freezes the animation state to the last frame when stop is called or any looping ends.

Values: `true`, `false`

> if not set, defaults to the threejs internals setup, which is `false`
