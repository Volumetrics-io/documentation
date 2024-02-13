# &lt;mr-div&gt;

The `<mr-div>`defines a division or section in an `<mr-panel>`. This is the same concept as `<mr-entity>` but is specific to items that are within an `<mr-panel>`. Think of this as items that are specific to the interface on the panel, 2D and 3D alike.

## Example

<inline-repl render-height="360" editor-height="240">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="2" data-position="-0.15 0 0.7"></mr-light>
            <mr-panel class="container">
                <mr-div class="purple"><mr-text>Purple section</mr-text></mr-div>
                <mr-div class="blue"><mr-text>Blue section</mr-text></mr-div>
                <mr-div class="yellow"><mr-text>Yellow section</mr-text></mr-div>
            </mr-panel>
        </mr-app> 
    </code>
    <style slot="css">
        .container {
            width: 100vw;
            height: 100vh;
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            grid-template-rows: 1fr 1fr 1fr;
            gap: 20px;
            padding: 20px;
        }
        mr-div {
            padding: 10px;
            border-radius: 5px;
        }
        .purple {
            background-color: MediumPurple;
            grid-row: 1 / 2;
            grid-column: 1 / 2;
        }
        .blue {
            background-color: LightSkyBlue;
            grid-row: 2 / 3;
            grid-column: 1 / -1;
        }
        .yellow {
            background-color: Gold;
            grid-row: 3;
            grid-column: 2 / -1;
        }
    </style>
</inline-repl>

## Definition and Usage

`<mr-div>` behaves exactly like a `<div>` tag. It can be styles using CSS, store data-attributes, etc.

```html
<mr-div class="blue"></mr-div>
```

You can then apply CSS

```css
.blue {
    background-color: LightSkyBlue;
    grid-row: 1 / 3;
    grid-column: 1 / -1;
}
```

## Anchoring 3D elements

`<mr-div>` can be used to anchor 3D elements inside an `<mr-panel>`

<inline-repl render-height="300" editor-height="300">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="0.5" data-position="0 0.1 0.35"></mr-light>
            <mr-panel>
                <mr-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore disputandum putant. Sed ut iis bonis erigimur, quae expectamus, sic laetamur iis, quae et splendide dicta sint neque sint conversa de Graecis? Nam si ea sola voluptas esset, quae quasi saxum Tantalo semper impendet, tum superstitio, qua qui utuntur, benivolentiam.</mr-text>
                <mr-div style="width: 300px; height: 100px; z-index: 70;">
                    <mr-model src="/static/sample/bowtie.glb" style="scale: 0.1"></mr-model>
                </mr-div>
                <mr-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore disputandum putant. Sed ut iis bonis erigimur, quae expectamus, sic laetamur iis, quae et splendide dicta sint neque sint conversa de Graecis? Nam si ea sola voluptas esset, quae quasi saxum Tantalo semper impendet, tum superstitio, qua qui utuntur, benivolentiam.</mr-text>
            </mr-panel>
        </mr-app>
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            padding: 10vw;
            gap: 10px;
            width: 100vw;
            height: 100vh;
            border-radius: unset;
        }
    </code>
</inline-repl>
