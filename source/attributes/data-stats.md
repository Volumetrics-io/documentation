# data-stats

```html
<mr-app data-stats="true"> ... </mr-app>
```

Stats can be attached to an [`mr-app`](/docs/mr-app) using `data-stats`:

### `data-stats`
Enables a visual of a stats counter in the top left corner. The stats counter can show a few different options, by default it shows 0.

Note this is different than the stats that are enabled by use of the [`<mr-stats>`](https://docs.mrjs.io/doc/mr-stats/) entity being directly added.

This stats toggle is great for use on desktop; however, it can cause performance bottle-necks in headset. We recommend for you to use the `<mr-stats>` tag for headset testing.

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
