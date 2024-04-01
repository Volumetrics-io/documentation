---
title: Material
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Material.js
---
# Material

<a name="material"></a>

## material : <code>object</code>
Useful namespace for helping with Materials and threejs utility functions

**Kind**: global namespace  

* [material](#material) : <code>object</code>
    * [.getObjectMaterial(parent)](#material.getObjectMaterial) ⇒ <code>object</code>
    * [.setObjectMaterial(parent, material)](#material.setObjectMaterial) ⇒ <code>object</code>
    * [.loadTextureAsync(src)](#material.loadTextureAsync) ⇒ <code>object</code>
    * [.loadVideoTextureAsync(video)](#material.loadVideoTextureAsync) ⇒ <code>object</code>

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

<a name="material.loadTextureAsync"></a>

### material.loadTextureAsync(src) ⇒ <code>object</code>
Function to load the texture asynchronously and return a promise

**Kind**: static method of [<code>material</code>](#material)  
**Returns**: <code>object</code> - texture - the fully loaded texture  

| Param | Type | Description |
| --- | --- | --- |
| src | <code>object</code> | the url path to the data to be loaded |

<a name="material.loadVideoTextureAsync"></a>

### material.loadVideoTextureAsync(video) ⇒ <code>object</code>
Function to load the texture asynchronously and return a promise

**Kind**: static method of [<code>material</code>](#material)  
**Returns**: <code>object</code> - texture - the fully loaded texture  

| Param | Type | Description |
| --- | --- | --- |
| video | <code>object</code> | the html video element whose src contains the path to the data to be loaded |

