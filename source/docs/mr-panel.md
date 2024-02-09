# &lt;mr-panel&gt;

The `<mr-panel>` tag creates a 2.5D UI panel.

**Currently limited to one UI panel per app**

## Example

```html
<mr-app>
    <mr-panel class="…">
        …
    </mr-panel>
    …
</mr-app>
```

## Definition and Usage

The `<mr-panel>` tag initializes and manages 2D interface elements, such as images, text, and buttons.

<inline-repl editor-height="280">
    <slot slot="html">
        <mr-app>
            <mr-panel>
                <mr-light color="white" intensity="0.5" data-position="0 0.3 0.25"></mr-light>
                <mr-text class="title">Welcome to my app</mr-text>
                <mr-text class="subtitle">You will be asked a few questions.</mr-text>
                <mr-button>Get started</mr-button>
            </mr-panel>
        </mr-app>
    </slot>
    <slot slot="css">
        mr-panel {
            background-color: white;
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        .title {
            font-size: 150%;
            font-weight: 700;
            letter-spacing: 1px;
        }
        .subtitle {
            font-size: 100%;
            font-weight: 400;
            margin-bottom: 20px;
        }
    </slot>
</inline-repl>


<!-- ```html
<mr-panel>
    <mr-text>Hello World!</mr-text>
    <mr-img src="…" alt="…"></mr-img>
</mr-panel>
```

\[TODO: example img\] -->

## Spatial Responsive Design

When viewed on a 2D screen, an `mr-panel` positions itself to fill the viewport, rendering itself and behaving like any 2D web app, responding to keyboard and mouse input or touch events.

<!-- ![mr-panel-example-0](/static/mr-panel-example-0.png) -->

in MR, the panel behaves like a floating touch screen, clipping any content that extends beyond its boundaries.

<!-- ![mr-panel-example-1](/static/mr-panel-example-1.png) -->

## 2.5D UI

MRjs supports 2.5D UI, adding a bit of depth to buttons, and incorporating 3D content such as the `<mr-model>`tag.

```html
<mr-panel>
    <mr-div> <!-- wrap non-2D elements in an mr-div to anchor them to the panel -->
        <mr-model src="…"></mr-model>
    </mr-div>
</mr-panel>
```
