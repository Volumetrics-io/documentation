---
title: "&lt;mr-a&gt;"
description: "The <mr-a> tag embeds a hyperlink in the interface of an <mr-panel>."
---
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

\[example img\]

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

\[example img\]