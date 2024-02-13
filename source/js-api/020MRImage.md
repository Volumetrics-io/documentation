---
title: MRImage
---
# MRImage

<a name="MRImage"></a>

## MRImage ⇐ <code>MRDivEntity</code>
Base html image represented in 3D space. `mr-image`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRImage](#MRImage) ⇐ <code>MRDivEntity</code>
    * [.MRImage](#MRImage+MRImage)
        * [new exports.MRImage()](#new_MRImage+MRImage_new)
    * [.width()](#MRImage+width) ⇒ <code>number</code>
    * [.height()](#MRImage+height) ⇒ <code>number</code>
    * [.connected()](#MRImage+connected)
    * [.mutated(mutation)](#MRImage+mutated)
    * [.computeImageObject3DFitDimensions()](#MRImage+computeImageObject3DFitDimensions)
    * [.cover(texture, aspect)](#MRImage+cover)

<a name="MRImage+MRImage"></a>

### mrImage.MRImage
**Kind**: instance class of [<code>MRImage</code>](#MRImage)  
<a name="new_MRImage+MRImage_new"></a>

#### new exports.MRImage()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="MRImage+width"></a>

### mrImage.width() ⇒ <code>number</code>
Calculates the width of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRImage+height"></a>

### mrImage.height() ⇒ <code>number</code>
Calculates the height of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
**Returns**: <code>number</code> - - the resolved height  
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

<a name="MRImage+computeImageObject3DFitDimensions"></a>

### mrImage.computeImageObject3DFitDimensions()
computes the width and height values for the image considering the value of object-fit

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
<a name="MRImage+cover"></a>

### mrImage.cover(texture, aspect)
Calculates the texture UV transformation change based on the image's aspect ratio.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>object</code> | the texture to augment |
| aspect | <code>number</code> | a given expected aspect ratio |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRImage.js' target='_blank'>Suggest an edit on GitHub for MRImage.js</a></div>
