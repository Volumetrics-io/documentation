# &lt;mr-div&gt;

The `<mr-div>`defines a division or section in an `<mr-panel>`. This is the same concept as `<mr-entity>` but is specific to items that are within an `<mr-panel>`. Think of this as items that are specific to the UI on the panel, 2D and 3D alike.

## Example

```html
<style>
    .container {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 1vw;
        grid-auto-rows: minmax(100px, auto);
    }

    .blue {
        background-color: blue;
        grid-row: 1 / 3;
        grid-column: 1 / -1;
    }
</style>

<mr-app>
    <mr-panel class="container">
        <mr-div class="blue"></mr-div>
    </mr-panel>
</mr-app>
```

![mr-div-example-0](/static/mr-div-example-0.png)

## Definition and Usage

`<mr-div>` behaves exactly like a `<div>` tag. It can receive CSS, data-attributes, etc.

```html
<mr-div class="blue"></mr-div>
```

you can then apply CSS

```css
.blue {
    background-color: blue;
    grid-row: 1 / 3;
    grid-column: 1 / -1;
}
```

## Anchoring 3D elements

`<mr-div>` can be used to anchor 3D elements inside an `<mr-panel>`

```html
<mr-div>
    <mr-model src="…"></mr-model>
</mr-div>
```

![mr-div-example-1](/static/mr-div-example-1.gif)
