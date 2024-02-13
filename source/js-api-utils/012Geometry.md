---
title: Geometry
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Geometry.js
---
# Geometry

<a name="geometry"></a>

## geometry : <code>object</code>
Useful namespace for helping with geometry utility functions

**Kind**: global namespace  
<a name="geometry.UIPlane"></a>

### geometry.UIPlane(width, height, radius_corner, smoothness) ⇒ <code>THREE.BufferGeometry</code>
This construction function creates the UIPlane that is used as the backdrop for most mrjs Panel divs.

**Kind**: static method of [<code>geometry</code>](#geometry)  
**Returns**: <code>THREE.BufferGeometry</code> - - The completed threejs plane object.  

| Param | Type | Description |
| --- | --- | --- |
| width | <code>number</code> | the expected width of the plane. |
| height | <code>number</code> | the expected height of the plane. |
| radius_corner | <code>number</code> | the expected radius value to curve the planes corners. |
| smoothness | <code>number</code> | the expected smoothness value. |

