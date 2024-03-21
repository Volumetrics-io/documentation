# &lt;mr-light&gt;

`<mr-light>` creates a light source in the MRjs scene.

## Simple example

```html
<mr-app>
    <mr-light color="red" intensity="10" data-position="0 1 1"></mr-light>
    <mr-panel>
        <mr-text> this white panel is tinted red by the light.</mr-text>
    </mr-panel>
</mr-app>
```

## Multiple lights

<inline-repl render-height="300" editor-height="260">
    <code slot="html">
        <mr-app>
            <mr-light color="OrangeRed" intensity="3" data-position="-0.2 0.25 0.15"></mr-light>
            <mr-light color="RoyalBlue" intensity="3" data-position="0.2 -0.25 0.15"></mr-light>
            <mr-panel>
                <mr-model id="bowtie" src="/static/sample/bowtie.glb"></mr-model>
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
        #bowtie {
            scale: 0.15;
            z-index: 35
        }
    </code>
    <code slot="javascript">
        function rotate(timestamp) {
            t = timestamp / 2000;
            rotation = Math.cos(t) * 180;
            document.querySelector("#bowtie").dataset.rotation = rotation + " 0 0";
            window.requestAnimationFrame(rotate);
        }
        window.requestAnimationFrame(rotate);
    </code>
</inline-repl>

<!-- <iframe height="400" style="width: 100%;" scrolling="no" title="<mr-light>" src="https://codepen.io/lobau/embed/eYXeMBz?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe> -->

<!-- ## Example from homepage

```html
<mr-app>
    <mr-panel>...</mr-panel>
    <mr-entity data-comp-animation="type: rotate; maxspeed: 0.002; acceleration: 0.000008;" 
             data-position="0 0 2">
        <mr-light layer="2" color="hsl(30, 100%, 50%)" intensity="1" data-position="0 1 0"></mr-light>
        <mr-light layer="2" color="hsl(208, 100%, 50%)" intensity="2" data-position="1 -1 0"></mr-light>
        <mr-light layer="2" color="hsl(340, 100%, 50%)" intensity="3" data-position="-1 -1 0"></mr-light>
    </mr-entity>
</mr-app>
```

### Homepage without Lights added to it

![mr-light-example-0](/static/mr-light-example-0.png)

### Homepage with Lights added to it

![mr-light-example-1](/static/mr-light-example-1.png) -->

## Definition and Usage

`<mr-light>` can be used to create additional light sources that can be positioned throughout the environment.

`<mr-light>` has two optional values:

* `color`: the color of the light
* `intensity`: the brightness of the light

## Shadows

for performance reasons, `<mr-light>` cannot cast shadows. Please use the global lighting for shadows.
