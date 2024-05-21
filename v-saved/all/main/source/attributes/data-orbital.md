# data-orbital

```html
<mr-app data-orbital="mode:true; targetPos:0 2 3"> ... </mr-app>
```

Orbital state can be attached to an [`mr-app`](/doc/mr-app) using `data-orbital`.:

### `data-orbital`
Specifies the orbital setup.

- `mode`:  true/false
  - default: `false`
- `targetPos`: the position that the orbital camera/user will rotate around in the 3D scene.
  - default: `0 0 0`

Enables just the use of orbital controls. Though this feature is already enabled as part of `debug=true`, we also allow a specific flag for it for the cases where you just want to look closer at something more easily without all the additional overhead of full debugging.

It works without the requirement of the `=+` keypress (unlike the `debug=true` case).

Note if both `orbital` and `debug` are set to `true`, the `orbital` will take priority, meaning you still wont have to use the `=+` keypress for it to work. The rest of `debug` will still work as expected.

Orbital Control 3D toggling:
>
> 1. rotate the scene with left mouse drag
> 2. pan the scene with right mouse drag
> 3. zoom with the mouse wheel
>
> Try it out below!

<inline-repl editor-height="280">
    <slot slot="html">
        <mr-app orbital="mode:true;">
            <mr-panel>
                <mr-model id="koi" src="/static/sample/koi.glb" data-comp-animation="clip: 0; action: play;" ></mr-model>
                <!-- Model by https://sketchfab.com/7plus -->
                <mr-light color="white" intensity="0.1" data-position="0 0.3 0.1"></mr-light>
                <mr-light color="LightSkyBlue" intensity="0.5" data-position="0 -0.15 0.25"></mr-light>
            </mr-panel>
        </mr-app>
    </slot>
    <slot slot="css">
        mr-panel {
            background-color: LightSkyBlue;
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        #koi {
            scale: 0.05;
            z-index: 70;
        }
    </slot>
</inline-repl>
