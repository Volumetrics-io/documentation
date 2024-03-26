---
title: MRMediaEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRMediaEntity.js
---
# MRMediaEntity

<a name="MRMediaEntity"></a>

## MRMediaEntity ⇐ <code>MRDivEntity</code>
Base html media entity represented in 3D space. `mr-media`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRMediaEntity](#MRMediaEntity) ⇐ <code>MRDivEntity</code>
    * [.MRMediaEntity](#MRMediaEntity+MRMediaEntity)
        * [new exports.MRMediaEntity()](#new_MRMediaEntity+MRMediaEntity_new)
    * [.width()](#MRMediaEntity+width) ⇒ <code>number</code>
    * [.height()](#MRMediaEntity+height) ⇒ <code>number</code>
    * [.connected()](#MRMediaEntity+connected)
    * [.mutated(mutation)](#MRMediaEntity+mutated)
    * [.computeObjectFitDimensions()](#MRMediaEntity+computeObjectFitDimensions)

<a name="MRMediaEntity+MRMediaEntity"></a>

### mrMediaEntity.MRMediaEntity
**Kind**: instance class of [<code>MRMediaEntity</code>](#MRMediaEntity)  
<a name="new_MRMediaEntity+MRMediaEntity_new"></a>

#### new exports.MRMediaEntity()
Constructs a base media entity using a UIPlane and other 3D elements as necessary.

<a name="MRMediaEntity+width"></a>

### mrMediaEntity.width() ⇒ <code>number</code>
Calculates the width of the media based on the media tag in the shadow root

**Kind**: instance method of [<code>MRMediaEntity</code>](#MRMediaEntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRMediaEntity+height"></a>

### mrMediaEntity.height() ⇒ <code>number</code>
Calculates the height of the media based on the media tag in the shadow root

**Kind**: instance method of [<code>MRMediaEntity</code>](#MRMediaEntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRMediaEntity+connected"></a>

### mrMediaEntity.connected()
Callback function of MREntity - handles setting up this media and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRMediaEntity</code>](#MRMediaEntity)  
<a name="MRMediaEntity+mutated"></a>

### mrMediaEntity.mutated(mutation)
Callback function of MREntity - Updates the media's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRMediaEntity</code>](#MRMediaEntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MRMediaEntity+computeObjectFitDimensions"></a>

### mrMediaEntity.computeObjectFitDimensions()
computes the width and height values for the image considering the value of object-fit

**Kind**: instance method of [<code>MRMediaEntity</code>](#MRMediaEntity)  
