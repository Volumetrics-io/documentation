---
title: MRSkyBox
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRSkyBox.js
---
# MRSkyBox

<a name="MRSkyBox"></a>

## MRSkyBox ⇐ <code>MREntity</code>
The skybox entity that allows users to give multiple images to pattern into the 3D background space. `mr-skybox`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRSkyBox](#MRSkyBox) ⇐ <code>MREntity</code>
    * [.MRSkyBox](#MRSkyBox+MRSkyBox)
        * [new exports.MRSkyBox()](#new_MRSkyBox+MRSkyBox_new)
    * [.onTextureLoaded(texture)](#MRSkyBox+onTextureLoaded)
    * [.connected()](#MRSkyBox+connected)
    * [.setOpacity()](#MRSkyBox+setOpacity)
    * [.onLoad()](#MRSkyBox+onLoad)

<a name="MRSkyBox+MRSkyBox"></a>

### mrSkyBox.MRSkyBox
**Kind**: instance class of [<code>MRSkyBox</code>](#MRSkyBox)  
<a name="new_MRSkyBox+MRSkyBox_new"></a>

#### new exports.MRSkyBox()
Constructor for skybox - defaults to the usual impl of an Entity.

<a name="MRSkyBox+onTextureLoaded"></a>

### mrSkyBox.onTextureLoaded(texture)
Callback function triggered when the texture is successfully loaded.
             It sets the loaded texture as the background and notifies all registered callbacks.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>THREE.Texture</code> | The loaded texture. |

<a name="MRSkyBox+connected"></a>

### mrSkyBox.connected()
Lifecycle method that is called when the entity is connected.
             This method initializes and starts the texture loading process.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  
<a name="MRSkyBox+setOpacity"></a>

### mrSkyBox.setOpacity()
Set the opacity of the skybox itself. Useful for blending between the outside and MR. Also
useful for cases where you want to blend between different skybox versions.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  
<a name="MRSkyBox+onLoad"></a>

### mrSkyBox.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  
