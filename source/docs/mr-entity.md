# &lt;mr-entity&gt;

`<mr-entity>` is the most fundamental MRjs element. It is an empty entity and contains no default properties of it's own.

## Example

```html
<!-- Rotate all the children -->
<mr-entity data-rotation="0 0 45">
    <mr-model src="…"></mr-model>
    <mr-model src="…"></mr-model>
    <mr-model src="./koifish.glb"></mr-model>
</mr-entity>
```

<!-- ![a swimming koi fish over a 3d layout](/static/mr-entity-example-0.gif) -->

## Definition and Usage

There are endless uses for `<mr-entity>`. The simplest of which is to group other elements together, such that they can be moved, rotated, scaled, and otherwise manipulated as a single entity.
