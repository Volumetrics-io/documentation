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

![mr-a-example-0](/static/mr-a-example-0.png)

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

![mr-a-example-1](/static/mr-a-example-1.png)
