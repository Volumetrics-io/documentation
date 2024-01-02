# Documentation

Public documentation page

You will need `pandoc` installed.

Then just run smoo.sh locally, passing the LOCAL=true environement variable

```sh
LOCAL=true ./smoo.sh
```

The website will be built in the `/public` folder.
Just serve this folder, or publish it to a CDN.

---
## To add a document

1. Add a markdown file in the `source/docs/` folder
2. Add the proper YAML data. Here's a boilerplate markdown:

```
---
title: "mr-a"
description: "The <mr-a> tag embeds a hyperlink in the interface of an <mr-panel>."
istag: true
---
# &lt;mr-a&gt;

The `<mr-a>`embeds a hyperlink in the UI of an `<mr-panel>`.
```