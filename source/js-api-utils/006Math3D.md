---
title: Math3D
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Math3D.js
---
# Math3D

<a name="math3D"></a>

## math3D : <code>object</code>
Useful namespace for helping with math3D and threejs utility functions

**Kind**: global namespace  
<a name="math3D.computeBoundingSphere"></a>

### math3D.computeBoundingSphere(group, relativeTo) ⇒ <code>THREE.Sphere</code>
Computes the bounding sphere of an inputted three group object.

**Kind**: static method of [<code>math3D</code>](#math3D)  
**Returns**: <code>THREE.Sphere</code> - - the resolved bounding sphere  

| Param | Type | Description |
| --- | --- | --- |
| group | <code>THREE.group</code> | the group to be enclosed in the bounding sphere. |
| relativeTo | <code>THREE.group</code> | object that the group is relative to. For example if the group is an apple held in a character's hand, relativeTo would be the characters hand. When left as null, the bounding sphere defaults to the inputted groups original world matrix. |

