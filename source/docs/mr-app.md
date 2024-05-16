# &lt;mr-app&gt;

The `<mr-app>` component serves as the foundational building block of an application using MRjs.

- It initializes the core functionalities like the render loop, physics engine, and other core features such as lighting and controllers/hand-tracking.
- It acts as the primary container for the entire application. All other custom elements, like for example `<mr-panel>`, `<mr-div>`, `<mr-img>`, or `<mr-button>`, should be nested within this root component to ensure they function correctly.
- Some data-attributes like `data-camera`, `data-lighting`, or `data-debug` can be set to change various default. More on that [below](#definition-and-usage).

## Definition and Usage

The `<mr-app>` tag has optional `data-attributes`:

- [`data-camera`](../attributes/data-camera)
<!--- [`data-layers`](../attributes/data-layers) we dont use this at the moment so commenting out for now -->
- [`data-lighting`](../attributes/data-lighting)
- [`data-debug`](../attributes/data-debug)
- [`data-occlusion`](../attributes/data-occlusion)
- [`data-orbital`](../attributes/data-orbital)
- [`data-stats`](../attributes/data-stats)
- [`data-preserve-drawing-buffer`](../attributes/data-preserve-drawing-buffer)

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
