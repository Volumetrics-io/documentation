---
title: MRSkyBoxEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRSkyBoxEntity.js
---
# MRSkyBoxEntity

<a name="MRSkyBoxEntity"></a>

## MRSkyBoxEntity ⇐ <code>MREntity</code>
The skybox entity that allows users to give multiple images to pattern into the 3D background space. `mr-skybox`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRSkyBoxEntity](#MRSkyBoxEntity) ⇐ <code>MREntity</code>
    * [.MRSkyBoxEntity](#MRSkyBoxEntity+MRSkyBoxEntity)
        * [new exports.MRSkyBoxEntity()](#new_MRSkyBoxEntity+MRSkyBoxEntity_new)
    * [.onTextureLoaded(texture)](#MRSkyBoxEntity+onTextureLoaded)
    * [.connected()](#MRSkyBoxEntity+connected)
    * [.setOpacity()](#MRSkyBoxEntity+setOpacity)
    * [.onLoad()](#MRSkyBoxEntity+onLoad)

<a name="MRSkyBoxEntity+MRSkyBoxEntity"></a>

### mrSkyBoxEntity.MRSkyBoxEntity
**Kind**: instance class of [<code>MRSkyBoxEntity</code>](#MRSkyBoxEntity)  
<a name="new_MRSkyBoxEntity+MRSkyBoxEntity_new"></a>

#### new exports.MRSkyBoxEntity()
Constructor for skybox - defaults to the usual impl of an Entity.

<a name="MRSkyBoxEntity+onTextureLoaded"></a>

### mrSkyBoxEntity.onTextureLoaded(texture)
Callback function triggered when the texture is successfully loaded.
             It sets the loaded texture as the background and notifies all registered callbacks.

**Kind**: instance method of [<code>MRSkyBoxEntity</code>](#MRSkyBoxEntity)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>THREE.Texture</code> | The loaded texture. |

<a name="MRSkyBoxEntity+connected"></a>

### mrSkyBoxEntity.connected()
(async) Lifecycle method that is called when the entity is connected.
             This method initializes and starts the texture loading process.

**Kind**: instance method of [<code>MRSkyBoxEntity</code>](#MRSkyBoxEntity)  
<a name="MRSkyBoxEntity+setOpacity"></a>

### mrSkyBoxEntity.setOpacity()
Set the opacity of the skybox itself. Useful for blending between the outside and MR. Also
useful for cases where you want to blend between different skybox versions.

**Kind**: instance method of [<code>MRSkyBoxEntity</code>](#MRSkyBoxEntity)  
<a name="MRSkyBoxEntity+onLoad"></a>

### mrSkyBoxEntity.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>MRSkyBoxEntity</code>](#MRSkyBoxEntity)  
