# &lt;mr-app&gt;

The `<mr-app>` component serves as the foundational building block of an application using MRjs.

- It initializes the core functionalities like the render loop, physics engine, and other core features such as lighting and controllers/hand-tracking.
- It acts as the primary container for the entire application. All other custom elements, like for example `<mr-panel>`, `<mr-div>`, `<mr-img>`, or `<mr-button>`, should be nested within this root component to ensure they function correctly.
- Some attributes like `camera`, `lighting`, or `debug` can be set to change various default. More on that [below](#definition-and-usage).

## Example

<inline-repl render-height="340" editor-height="300">
  <code slot="html">
    <mr-app>
        <mr-light color="HotPink" intensity="0.35" data-position="0 0.2 0.2"></mr-light>
        <mr-light color="DeepSkyBlue" intensity="0.35" data-position="-0.2 -0.2 0.2"></mr-light>
        <mr-light color="Gold" intensity="0.35" data-position="0.3 0 0.2"></mr-light>
        <mr-panel>
            <mr-text class="title">Hello world!</mr-text>
            <mr-text>This is an mr-app</mr-text>
            <mr-model id="logo" src="/static/sample/logo.glb"></mr-model>
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
        gap: 0.5rem;
        font-family: Helvetica;
        border-radius: unset;
    }
    mr-text {
        letter-spacing: 1px;
        line-height: 120%;
    }
    .title {
        font-size: 150%;
        font-weight: bold;
    }
    #logo {
      width: 200px;
      height: 200px;
      z-index: 70;
      scale: 0.15;
    }
  </code>
  <code slot="javascript">
    function rotate(timestamp) {
        t = timestamp / 2000;
        let rx = -Math.cos(t) * 90;
        let ry = Math.cos(t) * 90;
        let rz = Math.cos(t) * 180;
        document.querySelector("#logo").dataset.rotation = rx + " " + ry + " " + rz;
        window.requestAnimationFrame(rotate);
    };
    window.requestAnimationFrame(rotate);
  </code>
</inline-repl>

<!-- <iframe height="400" style="width: 100%;" scrolling="no" title="[docs] mr-light" src="https://codepen.io/lobau/embed/mdoqxxv?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe> -->

## Definition and Usage

The `<mr-app>` tag has three optional attributes:

### `camera`
Specifies the camera type when viewing on a 2D screen.

- `orthographic` (default)
- `perspective`

### `lighting`
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

### `debug`
Enables various debug features such as physics directional lines, some color changes to show certain features being used, and 3D toggling in website mode.

Physics directional lines:
These are red/green/blue axes lines coming out of the origin (center position) of objects. They demonstrate the xyz directions associated with that object.

3D toggling:
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

### `stats`
Enables a visual of a stats counter in the top left corner. The stats counter can show a few different options, by default it shows 0.

<inline-repl>
    <code slot="html">
        <mr-app stats="true">
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

### `preserve-drawing-buffer`
This enables the common html use-case of 'right-click to save' a png file of what's on the screen.

*Note: Most chromium-based browsers (chrome, duckduckgo, arc, etc...) have this feature by default making the use of this flag unnecessary*

Allowing this as a feature the user toggles manually, because it causes a performance hit and isnt a strong requirement by default for most people who are interacting.

<inline-repl>
    <code slot="html">
        <mr-app preserve-drawing-buffer="true">
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
