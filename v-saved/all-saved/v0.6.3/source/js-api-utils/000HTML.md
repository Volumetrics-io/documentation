---
title: HTML
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/HTML.js
---
# HTML

<a name="html"></a>

## html : <code>object</code>
Useful namespace for helping with html utility functions

**Kind**: global namespace  

* [html](#html) : <code>object</code>
    * [.resolvePath(path, baseUrl)](#html.resolvePath) ⇒ <code>string</code>
    * [.removeUrlQueries(path, baseUrl)](#html.removeUrlQueries) ⇒ <code>string</code>

<a name="html.resolvePath"></a>

### html.resolvePath(path, baseUrl) ⇒ <code>string</code>
Given the path returns an absolute path resolved so relative linking works as expected.

**Kind**: static method of [<code>html</code>](#html)  
**Returns**: <code>string</code> - a.href - the absolute path (or paths)  

| Param | Type | Description |
| --- | --- | --- |
| path | <code>string</code> | either a relative or full path inputted to an element. This can also be a path that has items separated by ',' so that you can resolve multiple items at once, since we allow users to send us multiple files that way. |
| baseUrl | <code>string</code> | a separate entry for if you want your url to start differently. this defaults to your window.location.origin. Additionally removes all queries from the end of the url, leaving the input as just the origin and its pathname. For ex: 'https://example.com/images/photo.png?version=2' becomes 'https://example.com/images/photo.png' |

<a name="html.removeUrlQueries"></a>

### html.removeUrlQueries(path, baseUrl) ⇒ <code>string</code>
Removes all queries from the end of the url, leaving the input as just the origin and its pathname.
For ex: 'https://example.com/images/photo.png?version=2' becomes 'https://example.com/images/photo.png'

**Kind**: static method of [<code>html</code>](#html)  
**Returns**: <code>string</code> - a.href - the absolute path  

| Param | Type | Description |
| --- | --- | --- |
| path | <code>string</code> | either a relative or full path inputted to an element. |
| baseUrl | <code>string</code> | a separate entry for if you want your url to start differently. this defaults to your window.location.origin. |

