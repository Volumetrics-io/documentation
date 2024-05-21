---
title: MRImageEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRImageEntity.js
---
# MRImageEntity

<a name="MRImageEntity"></a>

## MRImageEntity ⇐ <code>MRMediaEntity</code>
Base html image represented in 3D space. `mr-image`

**Kind**: global class  
**Extends**: <code>MRMediaEntity</code>  

* [MRImageEntity](#MRImageEntity) ⇐ <code>MRMediaEntity</code>
    * [.MRImageEntity](#MRImageEntity+MRImageEntity)
        * [new exports.MRImageEntity()](#new_MRImageEntity+MRImageEntity_new)
    * [.mediaWidth()](#MRImageEntity+mediaWidth) ⇒ <code>number</code>
    * [.mediaHeight()](#MRImageEntity+mediaHeight) ⇒ <code>number</code>
    * [.connected()](#MRImageEntity+connected)
    * [.loadMediaTexture()](#MRImageEntity+loadMediaTexture)
    * [.mutated(mutation)](#MRImageEntity+mutated)

<a name="MRImageEntity+MRImageEntity"></a>

### mrImageEntity.MRImageEntity
**Kind**: instance class of [<code>MRImageEntity</code>](#MRImageEntity)  
<a name="new_MRImageEntity+MRImageEntity_new"></a>

#### new exports.MRImageEntity()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="MRImageEntity+mediaWidth"></a>

### mrImageEntity.mediaWidth() ⇒ <code>number</code>
Gets the width of the internal media object

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  
**Returns**: <code>number</code> - width - the value of the width  
<a name="MRImageEntity+mediaHeight"></a>

### mrImageEntity.mediaHeight() ⇒ <code>number</code>
Gets the height of the internal media object

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  
**Returns**: <code>number</code> - height - the value of the height  
<a name="MRImageEntity+connected"></a>

### mrImageEntity.connected()
(async) handles setting up this Image and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  
<a name="MRImageEntity+loadMediaTexture"></a>

### mrImageEntity.loadMediaTexture()
Loads the Media texture of the setup this.media object based on its html source info.

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  
<a name="MRImageEntity+mutated"></a>

### mrImageEntity.mutated(mutation)
Callback function of MREntity - Updates the image's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

