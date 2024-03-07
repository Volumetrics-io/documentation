---
description: "An introduction to the debugging visuals in MRjs"
---
# MRjs Debugging

We had added certain debug visuals to aid in the process of building ui/physics/general items in MRjs.

These include `stats` (such as fps, ms,mb, and custom options) and a general `debug` flag used for toggling physics lines and some coloring visuals for certain attributes.

To use these make sure that `mr-app` is setup as follows:

```
<mr-app debug="true" stats="true">
...
</mr-app>
```

You can include `mr-app` with one or both of those visualization flags.

## `debug`

[See more information in `<mr-app>`](https://docs.mrjs.io/doc/mr-app/#debug) for how to use it properly.

## `stats`

[See more information in `<mr-app`](https://docs.mrjs.io/doc/mr-app/#stats) for how to use it properly.
