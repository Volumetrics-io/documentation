# data-preserve-drawing-buffer

```html
<mr-app data-preserve-drawing-buffer="true"> ... </mr-app>
```

Preserve-drawing-buffer state can be attached to an [`mr-app`](/doc/mr-app) using `data-preserve-drawing-buffer`:

### `preserve-drawing-buffer`
This enables the common html use-case of 'right-click to save' a png file of what's on the screen.

_Note: Most chromium-based browsers (chrome, duckduckgo, arc, etc...) have this feature by default making the use of this flag unnecessary_

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
