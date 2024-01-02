---
title: "&lt;mr-entity&gt;"
description: "<mr-entity> is the most fundamental mr.js element. It is an empty entity and contains no default properties of it's own."
---
# &lt;mr-entity&gt;

`<mr-entity>` is the most fundamental mr.js element. It is an empty entity and contains no default properties of it's own. 

## Example

```html
<mr-entity data-rotation="0 0 45">
    <mr-model src="…" data-position="-1 0 0"></mr-model>
    <mr-model src="…"></mr-model>
</mr-entity>
```

\[example img\]

## Definition and Usage

There are endless uses for `<mr-entity>` the simplest of which simplest is to group other elements together, such that they can be moved, rotated, scaled, and otherwise manipulated as a single entity. as shown in the example above.