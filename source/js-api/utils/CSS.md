<a name="CSS"></a>

## CSS : <code>object</code>
Useful namespace for helping with CSS utility functions

**Kind**: global namespace  

* [CSS](#CSS) : <code>object</code>
    * [.threeToPx(val)](#CSS.threeToPx) ⇒ <code>number</code>
    * [.pxToThree(val)](#CSS.pxToThree) ⇒ <code>number</code>

<a name="CSS.threeToPx"></a>

### CSS.threeToPx(val) ⇒ <code>number</code>
Converts 3D world positions to display positions based on global viewPort information.
             Useful as part of the layout system and css value handling (px<-->threejs).

**Kind**: static method of [<code>CSS</code>](#CSS)  
**Returns**: <code>number</code> - - the 2D pixel space representation of value.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | the 3D value to be converted to 2D pixel space |

<a name="CSS.pxToThree"></a>

### CSS.pxToThree(val) ⇒ <code>number</code>
Converts display positions to 3D world positions to based on global viewPort information.
Useful as part of the layout system and css value handling (px<-->threejs).

**Kind**: static method of [<code>CSS</code>](#CSS)  
**Returns**: <code>number</code> - - the 3D representation of value.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | the 2D pixel space value to be converted to 3D space. |

