---
title: "mr-app"
description: "The <mr-app> tag initializes an mr.js app."
istag: true
---
# &lt;mr-app&gt;

The `<mr-app>` tag initializes and mr.js app.

## Example

```html
<mr-app>
    …
</mr-app>
```

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