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
    * [.connected()](#MRImageEntity+connected)
    * [.mutated(mutation)](#MRImageEntity+mutated)

<a name="MRImageEntity+MRImageEntity"></a>

### mrImageEntity.MRImageEntity
**Kind**: instance class of [<code>MRImageEntity</code>](#MRImageEntity)  
<a name="new_MRImageEntity+MRImageEntity_new"></a>

#### new exports.MRImageEntity()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="MRImageEntity+connected"></a>

### mrImageEntity.connected()
Callback function of MREntity - handles setting up this Image and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  
<a name="MRImageEntity+mutated"></a>

### mrImageEntity.mutated(mutation)
Callback function of MREntity - Updates the image's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRImageEntity</code>](#MRImageEntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

