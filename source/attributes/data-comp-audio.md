# data-comp-audio

```html
<mr-entity data-comp-audio="src: path/to/file.wav; action: play; loop: true; distance: 1"></mr-entity>
```

Positional (aka Spatial) Audio can be attached using `data-comp-audio` to any `mr-entity`, it has 4 values:

## `src` 

The path to the audio file. 

## `action`

The current action state of the audio playback.

Values: `play`, `pause`, `stop` (default)

## `loop`

Whether the audio should be looped.

Values: `true`, `false` (default)

## `distance`

The distance at which the audio begins to dissipate.

Values: meters, default: 1.0
