---
title: "mr-text"
description: "The <mr-text> tag embeds text into an <mr-panel>."
istag: true
---
# &lt;mr-text&gt;

The `<mr-text>`embeds text into an `<mr-panel>`.

## Example

```html
<mr-app>
    <mr-panel class="container">
        <mr-text>Hello World!</mr-text>
    </mr-panel>
</mr-app>
```

\[example img\]

## Definition and Usage

`<mr-text>` supports custom fonts and has growing support CSS styling:

```html
<mr-text class="title">mr.js</mr-text>
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

### video texture example

```html
<video id="video">…</video>
<mr-app>
    <mr-panel class="container">
        <mr-text class="title">mr.js</mr-text>
    </mr-panel>
</mr-app>
```

```javascript
let video = document.getElementById( 'video' );
let text = document.querySelector('.title') 

video.play();
video.addEventListener( 'play', function () {
    this.currentTime = 3;
});

let texture = new THREE.VideoTexture( video );
texture.colorSpace = THREE.SRGBColorSpace

let material = new THREE.MeshLambertMaterial({ color: 0xffffff, 
                                               map: texture });

text.textObj.material = material
```
