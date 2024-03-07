---
title: MRImage
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRImage.js
---
# MRImage

<a name="MRImage"></a>

## MRImage ⇐ <code>MRMedia</code>
Base html image represented in 3D space. `mr-image`

**Kind**: global class  
**Extends**: <code>MRMedia</code>  

* [MRImage](#MRImage) ⇐ <code>MRMedia</code>
    * [.MRImage](#MRImage+MRImage)
        * [new exports.MRImage()](#new_MRImage+MRImage_new)
    * [.connected()](#MRImage+connected)
    * [.mutated(mutation)](#MRImage+mutated)

<a name="MRImage+MRImage"></a>

### mrImage.MRImage
**Kind**: instance class of [<code>MRImage</code>](#MRImage)  
<a name="new_MRImage+MRImage_new"></a>

#### new exports.MRImage()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="MRImage+connected"></a>

### mrImage.connected()
Callback function of MREntity - handles setting up this Image and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
<a name="MRImage+mutated"></a>

### mrImage.mutated(mutation)
Callback function of MREntity - Updates the image's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

