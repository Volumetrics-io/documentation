---
title: "&lt;mr-light&gt;"
description: "<mr-light> creates a light source in the mr.js scene."
---
# &lt;mr-light&gt;

`<mr-light>` creates a light source in the mr.js scene.

## Example

```html
<mr-app>
    <mr-light color="red" intensity="10" data-position="0 1 1"></mr-light>
    <mr-panel>
        <mr-text> this white panel is tinted red by the light.</mr-text>
    </mr-panel>
</mr-app>
```

## Definition and Usage

`<mr-light>` can be used to create additional light sources that can be positioned throughout the environment.

`<mr-light>` has two optional values:

* `color`: the color of the light
* `intensity`: the brightness of the light

## Shadows

for performance reasons, `<mr-light>` cannot cast shadows. Please use the global lighting for shadows.