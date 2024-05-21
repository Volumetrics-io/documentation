# data-comp-anchor

```html
<mr-entity data-comp-anchor="type: plane; label: table"></mr-entity>
```

Anchoring is achieved using the anchoring component `data-comp-anchor` on any [`mr-entity`](/doc/mr-entity):

## `type` 

There are currently three types of anchors:

- `fixed`: Positions the anchored element directly in front of the user whenever an XR session is started.
- `floating`: Allows the user to place the anchored element where they choose, using a look/pinch gesture. The user can place it floating in their space or on the scene mesh.
- `plane`: Anchors the element to the nearest plane that matches the specified label or orientation.

If no label or orientation is specified, the element will be anchored to the nearest plane.

**Note**: each plane is limited to one anchor for simplicity. To anchor multiple entities to a single plane, group them under a parent entity and anchor the parent entity.

# Plane anchor attributes

These attributes are only relevant to plane anchors.

## `orientation` (optional)

This attribute is useful when you wish to anchor to a plane of any given orientation, regardless of label.

Supported values: `horizontal`, `vertical`

## `label` (optional)

Use this to target a specific type of plane, such as a table or wall.

Supported values: `wall`, `floor`, `ceiling`, `table`

## `occlusion`

By default, planes occlude virtual content behind them, use this flag to disable occlusion.

Values: `true` (default), `false`
