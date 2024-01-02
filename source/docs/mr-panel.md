---
title: "mr-panel"
description: "The <mr-panel> tag creates a 2.5D UI panel."
istag: true
---
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

calling `<mr-panel>` tag initializes and manages 2D UI, such as images, text, and buttons. 

```html
<mr-panel>
    <mr-text>Hello World!</mr-text>
    <mr-img src="…" alt="…"></mr-img>
</mr-panel>
```

\[example img\]

## Spatial Responsive Design

When viewed on a 2D screen, an `mr-panel` positions itself to fill the viewport, rendering itself and behaving like any 2D web app, responding to keyboard and mouse input or touch events.

\[example gif\]

in MR, the panel behaves like a floating touch screen, clipping any content that extends beyond it's boundaries.

\[example gif\]

## 2.5D UI

mr.js supports 2.5D UI, adding a bit of depth to buttons, and incorporating 3D content such as the `<mr-model>`tag.

```html
<mr-panel>
    <mr-div> <!-- wrap non-2D elements in an mr-div to anchor them to the panel -->
        <mr-model src="…"></mr-model>
    </mr-div>
</mr-panel>
```

\[example gif\]