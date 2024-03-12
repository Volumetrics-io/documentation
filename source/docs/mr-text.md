# &lt;mr-text&gt;

The `<mr-text>`embeds text into an `<mr-panel>`.

## Example

<inline-repl editor-height="280">
    <code slot="html">
        <mr-app>
            <mr-panel class="container">
                <mr-text>Hello World!</mr-text>
            </mr-panel>
        </mr-app>   
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
    </code>
</inline-repl>

## Definition and Usage

`<mr-text>` supports custom fonts and has growing support CSS styling:

```html
<mr-text class="title">MRjs</mr-text>
```

```css
.title {
    font-family: 'Roboto';
    font-size: 6vw;
    line-height: 100%;
    text-align: center;
    color: rgba(24, 24, 24, 0.75);
}
```

## Custom Fonts

Custom fonts are supported but must be loaded manually in css using `@font-face`

```css
@font-face {
    font-family: 'Roboto';
    src: url('./assets/fonts/Roboto-Regular.ttf') format('truetype');
}
```

## Supported  Properties

* font-family
  * font fallbacks not currently supported
* font-size
* color
* line-height
* white-space
* vertical-align
* text-align

## Troika

mr-text is made possible through Troika-Three-Text and can be manipulated with JavaScript like any other THREE.js.

### button changing text example

<inline-repl editor-height="280">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="0.5" data-position="0 0 0.25"></mr-light>
            <mr-panel id="panel">
                <mr-button onclick="changeColor()">Push</mr-button>
                <mr-text id="color_value">Press the above button to change the color!</mr-text>
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
            function changeColor() {
            // change the background color
            let hue = Math.floor(Math.random() * 360);
            let color = 'hsl(' + hue + ', 100%, 80%)';
            document.querySelector("#panel").style.backgroundColor = color;
            // change the text to show the background color
            console.log(color_value);
            // Create a new color object
            var col = new THREE.Color();
            // Set the color using HSL values
            // h, s, and l are expected to be in the range of 0 to 1
            col.setHSL(hue, 100, 80);
            // Use the color for a material
            var material = new THREE.MeshBasicMaterial({
                color: col
            });
            text.textObj.material = material;
            console.log(col);
        }
        changeColor();
    </code>
</inline-repl>
