---
title: MRVideoEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRVideoEntity.js
---
# MRVideoEntity

<a name="MRVideoEntity"></a>

## MRVideoEntity ⇐ <code>MRMediaEntity</code>
Base html video represented in 3D space. `mr-video`

**Kind**: global class  
**Extends**: <code>MRMediaEntity</code>  

* [MRVideoEntity](#MRVideoEntity) ⇐ <code>MRMediaEntity</code>
    * [.MRVideoEntity](#MRVideoEntity+MRVideoEntity)
        * [new exports.MRVideoEntity()](#new_MRVideoEntity+MRVideoEntity_new)
    * [.mediaWidth()](#MRVideoEntity+mediaWidth) ⇒ <code>number</code>
    * [.mediaHeight()](#MRVideoEntity+mediaHeight) ⇒ <code>number</code>
    * [.loadMediaTexture()](#MRVideoEntity+loadMediaTexture)
    * [.connected()](#MRVideoEntity+connected)
    * [.srcObject(src)](#MRVideoEntity+srcObject)
    * [.play()](#MRVideoEntity+play)
    * [.pause()](#MRVideoEntity+pause)

<a name="MRVideoEntity+MRVideoEntity"></a>

### mrVideoEntity.MRVideoEntity
**Kind**: instance class of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="new_MRVideoEntity+MRVideoEntity_new"></a>

#### new exports.MRVideoEntity()
Constructs a base video entity using a UIPlane and other 3D elements as necessary.

<a name="MRVideoEntity+mediaWidth"></a>

### mrVideoEntity.mediaWidth() ⇒ <code>number</code>
Calculates the width of the video based on the video tag itself

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRVideoEntity+mediaHeight"></a>

### mrVideoEntity.mediaHeight() ⇒ <code>number</code>
Calculates the height of the video based on the video tag itself

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRVideoEntity+loadMediaTexture"></a>

### mrVideoEntity.loadMediaTexture()
Loads the associated video into 3D based on its html properties.

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="MRVideoEntity+connected"></a>

### mrVideoEntity.connected()
(async) handles setting up this video and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="MRVideoEntity+srcObject"></a>

### mrVideoEntity.srcObject(src)
Sets the srcObject of the video media (since it uses 'srcObject' instead of 'src' like other items).

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  

| Param | Type | Description |
| --- | --- | --- |
| src | <code>string</code> | the string to the new source object we want |

<a name="MRVideoEntity+play"></a>

### mrVideoEntity.play()
Plays the video in the shadow root

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="MRVideoEntity+pause"></a>

### mrVideoEntity.pause()
Pauses the video in the shadow root

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
