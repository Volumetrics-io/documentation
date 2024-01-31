# data-comp-audio

```html
<mr-entity data-comp-audio="src: path/to/file.wav; state: play; loop: true; distance: 1"></mr-entity>
```

Positional (AKA Spatial) Audio can be attached to an entity using `data-comp-audio`, it has 4 values:

`src`

the path to the audio file. 

`state`

the current state of the audio playback

values: `play`, `pause`, `stop` (default)

`loop`

whether or not the audio should be looped.

values: `true`, `false` (default)

`distance`

the distance at which the audio begins to disipate

value: meters, default: 1.0