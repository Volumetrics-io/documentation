# &lt;mr-a&gt;

The `<mr-a>`embeds a hyperlink in the UI of an `<mr-panel>`.

## Example

```html
<mr-app>
    <mr-panel id="panel">
        <mr-a href="https://volumetrics.io">volumetrics</mr-a>
    </mr-panel>
</mr-app>
```

<iframe height="300" style="width: 100%;" scrolling="no" title="mr-a" src="https://codepen.io/lobau/embed/zYbPWPz?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe>

## Definition and Usage

`The <mr-a>` tag has one required attribute:

* `href`: the hyperlink destination

## image links

Like it's HTML equivalent, `<mr-a>` can be used to wrap other elements, making them clickable links

```html
<mr-a href="https://volumetrics.io">
    <mr-img src="…"></mr-img>
</mr-a>
```

<iframe height="400" style="width: 100%;" scrolling="no" title="mr-a + mr-img" src="https://codepen.io/lobau/embed/GReOxyz?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe>

<!-- ![mr-a-example-1](/static/mr-a-example-1.png) -->
