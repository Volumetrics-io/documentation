# &lt;mr-app&gt;

The `<mr-app>` component serves as the foundational building block of an application using mrjs.

- It initializes the core functionalities like the render loop, physics engine, and other core features such as lighting and controllers/hand-tracking.
- It acts as the primary container for the entire application. All other custom elements, like for example `<mr-panel>`, `<mr-div>`, `<mr-img>`, or `<mr-button>`, should be nested within this root component to ensure they function correctly.
- Some attributes like `camera`, `lighting`, or `debug` can be set to change various default. More on that [below](#definition-and-usage).

## Example

```html
<mr-app debug="true">
    <!-- The 2D UI Panel -->
    <mr-panel>
        <mr-text class="title">Hello world!</mr-text>
        <mr-text>This is an mr-app</mr-text>

        <!--wrap non-UI components in mr-div to anchor to UI-->
        <mr-div style="width: 200px; height: 200px; z-index: 70;">
            <mr-model id="logo" src="https://assets.codepen.io/686746/volumetrics.stl" style="scale: 0.0025;"></mr-model>
        </mr-div>
    </mr-panel>
</mr-app>
````

<iframe height="400" style="width: 100%;" scrolling="no" title="[docs] mr-light" src="https://codepen.io/lobau/embed/mdoqxxv?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe>

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
Enables various debug features such as physics, stats monitoring. If the debug flag is present and set to `false`, certain stats are still visible.

> When the debug flag is enabled (`<mr-app debug="true">`), you can press and hold the `=` key on your keyboard to:
>
> 1. rotate the scene with left mouse drag
> 2. pan the scene with right mouse drag
> 3. zoom with the mouse wheel
