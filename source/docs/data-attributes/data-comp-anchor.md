# &lt;data-comp-anchor&gt;

```html
<mr-entity data-comp-anchor="type: plane; label: table"></mr-entity>
```

Anchoring is achieved using the anchoring component, `data-comp-anchor`, it has 4 attributes:

`type`

There are currently three types of anchors:

`fixed`

positions the anchored element directly in front of the user whenever an XR sessions is started.

`floating`

allows the user to place the anchored element where they choose using a look/pinch gesture. The user can place it floating in their space or on the scene mesh

`plane`

anchors the element to the nearest plane that matches the specified label or orientation.

if no label or orientation is specified, the element will be anchored to the nearest plane.

**Note**: each plane is limited to one anchor for simplicity. To anchor multiple entities to a single plane, group them under a parent entity and anchor the parent entity.

### Plane anchor attributes


These attributes are only relevant to plane anchors

`orientation` (optional)


This attribute is useful when you wish to anchor to a plane of any given orientation, regardless of label.


supported values: `horizontal`, `vertical`

`label` (optional)


Use this to target a specific type of plane, such as a table or wall.


supported values: `wall`, `floor`, `ceiling`, `table`

`occlusion`

by default, planes occlude virtual content behind them, use this flag disable occlusion.


values: `true` (default), `false`
