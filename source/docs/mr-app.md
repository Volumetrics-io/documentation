# &lt;mr-app&gt;

The `<mr-app>` tag initializes and mr.js app.

## Example

```html
<mr-app>
    …
</mr-app>
```

## Example with basic content

```html
<mr-app debug="false">
    <!-- The 2D UI Panel -->
    <mr-panel class="layout">
        <mr-text class="title">
            This is a quick example a panel with explainer text.
        </mr-text>
        <!--wrap non-UI components in mr-div to anchor to UI-->
        <mr-div id="logo">
            <mr-model src="./assets/models/logo.glb"></mr-model> 
        </mr-div>
    </mr-panel>
</mr-app>
````

### main view

![mr-app-example-0](/static/mr-app-example-0.png)

### `=` pressed and rotating

![mr-app-example-1](/static/mr-app-example-1.png)

## Definition and Usage

calling `<mr-app>` tag initializes mr.js and manages the render loop, physics engine, and other core features such as lighting and controllers/hand-tracking.

The `<mr-app>` tag has three optional attributes:

* `camera` - Specifies the camera type when viewing on a 2D screen.
  * camera
    * default: `orthographic`
    * `perspective`
* `lighting` - specifies the global lighting conditions.
  * `enabled`: enables or disables global lighting is enabled
    * default: `true`
  * `shadows`: enables or disables shadows
    * default: `true`
    * note: always disabled on mobile for perf reasons
  * `color`: the color of the global lighting
    * default: `#fff`
  * `intensity`: how bright the lighting is
    * default: `1`
  * `radius`: the shadow radius
    * default: `5`
* `debug` - enables various debug features such as physics, stats monitoring
  * default: `true`
  * note: hold the `=` key to move using arrows keys while in debug mode
  * if the debug flag is present and set to `false`, certain stats are still visible
