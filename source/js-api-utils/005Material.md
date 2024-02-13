---
title: Material
---
# Material

<a name="material"></a>

## material : <code>object</code>
Useful namespace for helping with Materials and threejs utility functions

**Kind**: global namespace  

* [material](#material) : <code>object</code>
    * [.getObjectMaterial(parent)](#material.getObjectMaterial) ⇒ <code>object</code>
    * [.setObjectMaterial(parent, material)](#material.setObjectMaterial) ⇒ <code>object</code>

<a name="material.getObjectMaterial"></a>

### material.getObjectMaterial(parent) ⇒ <code>object</code>
Given the parent, grabs either the parent's direct material or (in the case of a group) the
material of the first child hit.

**Kind**: static method of [<code>material</code>](#material)  
**Returns**: <code>object</code> - material - the grabbed material  

| Param | Type | Description |
| --- | --- | --- |
| parent | <code>object</code> | either a THREE.Group or a THREE.mesh/object |

<a name="material.setObjectMaterial"></a>

### material.setObjectMaterial(parent, material) ⇒ <code>object</code>
Given the parent, grabs either the parents direct material or (in the case of a group) the
material of the first child hit.

**Kind**: static method of [<code>material</code>](#material)  
**Returns**: <code>object</code> - parent - the updated parent object  

| Param | Type | Description |
| --- | --- | --- |
| parent | <code>object</code> | either a THREE.Group or a THREE.mesh/object |
| material | <code>object</code> | a threejs material to be set for either the parent's direct material or (in the case of a group) the material of all children within the parent group. |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Material.js' target='_blank'>Suggest an edit on GitHub for Material.js</a></div>
