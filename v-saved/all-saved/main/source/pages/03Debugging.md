---
description: "An introduction to the debugging visuals in MRjs"
---
# MRjs Debugging

We had added certain debug visuals to aid in the process of building ui/physics/general items in MRjs.

These include `data-stats` (such as fps, ms,mb, and custom options) and a general `data-debug` flag used for toggling physics lines and some coloring visuals for certain attributes.

To use these make sure that `mr-app` is setup as follows:

```
<mr-app data-debug="true" data-stats="true">
...
</mr-app>
```

You can include [`mr-app`](/doc/mr-app) with one or both of those visualization flags.

## `data-debug`

[See more information](/attributes/data-debug) for how to use it properly.

## `stats`

[See more information](/attributes/data-stats) for how to use it properly.
