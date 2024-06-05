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
    </code>
</inline-repl>

## Troika

mr-text is made possible through Troika-Three-Text and can be manipulated with JavaScript like any other THREE.js.

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
