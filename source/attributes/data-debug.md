# data-position

```html
<mr-entity data-position="0 -1 0.5" data-rotation="90 -30 180"></mr-entity>
<mr-light data-position="0 -0.1 0.15" color="white" intensity="0.5"></mr-light>
```

Position can be attached to an `mr-entity` using `data-position`, it has a specific 3D value:

### `data-debug`
Enables various debug features such as physics directional lines, some color changes to show certain features being used, and 3D toggling in website mode.

Physics directional lines:
These are red/green/blue axes lines coming out of the origin (center position) of objects. They demonstrate the xyz directions associated with that object.

Orbital Control 3D toggling:
> When the debug flag is enabled (`<mr-app debug="true">`), you can press and hold the `=+` key on your keyboard to:
>
> 1. rotate the scene with left mouse drag
> 2. pan the scene with right mouse drag
> 3. zoom with the mouse wheel
>
> Try it out below!

<inline-repl>
    <code slot="html">
        <mr-app debug="true">
            <mr-light color="white" intensity="0.5" data-position="0 0 0.25"></mr-light>
            <mr-panel id="panel">
                <mr-button onclick="changeColor()">Change color!</mr-button>
            </mr-panel>
        </mr-app>
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        mr-button {
            font-family: system-ui;
            background-color: white;
            padding: 8px 16px;
            font-size: 150%;
            border-radius: 20px;
        }
    </code>
    <code slot="javascript">
        function changeColor() {
            let hue = Math.floor(Math.random() * 360);
            let color = 'hsl(' +  hue + ', 100%, 80%)';
            document.querySelector("#panel").style.backgroundColor = color;
        }
        changeColor();
    </code>
</inline-repl>
