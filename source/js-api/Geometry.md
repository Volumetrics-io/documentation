<a name="Geometry"></a>

## Geometry : <code>object</code>
Useful namespace for helping with Geometry utility functions

**Kind**: global namespace  
<a name="Geometry.UIPlane"></a>

### Geometry.UIPlane(width, height, radius_corner, smoothness) ⇒ <code>THREE.BufferGeometry</code>
This construction function creates the UIPlane that is used as the backdrop for most mrjs Panel divs.

**Kind**: static method of [<code>Geometry</code>](#Geometry)  
**Returns**: <code>THREE.BufferGeometry</code> - - The completed threejs plane object.  

| Param | Type | Description |
| --- | --- | --- |
| width | <code>number</code> | the expected width of the plane. |
| height | <code>number</code> | the expected height of the plane. |
| radius_corner | <code>number</code> | the expected radius value to curve the planes corners. |
| smoothness | <code>number</code> | the expected smoothness value. |

