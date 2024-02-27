---
title: HTML
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/HTML.js
---
# HTML

<a name="html"></a>

## html : <code>object</code>
Useful namespace for helping with html utility functions

**Kind**: global namespace  
<a name="html.resolvePath"></a>

### html.resolvePath(path) ⇒ <code>string</code>
Given the path returns an absolute path resolved so relative linking works as expected.

**Kind**: static method of [<code>html</code>](#html)  
**Returns**: <code>string</code> - a.href - the absolute path  

| Param | Type | Description |
| --- | --- | --- |
| path | <code>string</code> | either a relative or full path inputted to an element. Additionally removes all queries from the end of the url, leaving the input as just the origin and its pathname. For ex: 'https://example.com/images/photo.png?version=2' becomes 'https://example.com/images/photo.png' |

