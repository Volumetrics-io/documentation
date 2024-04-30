# data-comp-audio

```html
<mr-model src="path/to/file" data-comp-animation="action: play; loop: true"></mr-entity>
```

## `action`

Handles the animation starting and stopping.

Values: `play`, `pause`, `stop`

## `loop`

Handles how the animation loops for the model file. If set to `true`/`false` ignores the value of `loopMode`, otherwise acts as a numerical looping count.

Values: `true`, `false`, number >= 0

> if set to `true`/`false`, ignores the `loopMode` value

## `loopMode`

The format for how the looping should occur. Values are based on threejs defaults.

Values: `once`, `repeat`, and `pingpong`

> if set to `once`, ignores the `loop` value.
