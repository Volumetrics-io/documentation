---
title: Color
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Color.js
---
# Color

<a name="color"></a>

## color : <code>object</code>
Useful namespace for helping with color utility functions

**Kind**: global namespace  
<a name="color.hexToRgba"></a>

### color.hexToRgba(hex) ⇒ <code>object</code>
Converts a hex code into a usable rgba object value

**Kind**: static method of [<code>color</code>](#color)  
**Returns**: <code>object</code> - - the calculated rgba value representation of the hex code
{
     r: number, // Red component (0-255)
     g: number, // Green component (0-255)
     b: number, // Blue component (0-255)
     a: number  // Alpha component (0-1 for transparency)
}  

| Param | Type | Description |
| --- | --- | --- |
| hex | <code>string</code> | the hex code including "#" at the beginning |

