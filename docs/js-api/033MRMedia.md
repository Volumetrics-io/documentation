---
title: MRMedia
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRMedia.js
---
# MRMedia

<a name="MRMedia"></a>

## MRMedia ⇐ <code>MRDivEntity</code>
Base html media entity represented in 3D space. `mr-media`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRMedia](#MRMedia) ⇐ <code>MRDivEntity</code>
    * [.MRMedia](#MRMedia+MRMedia)
        * [new exports.MRMedia()](#new_MRMedia+MRMedia_new)
    * [.width()](#MRMedia+width) ⇒ <code>number</code>
    * [.height()](#MRMedia+height) ⇒ <code>number</code>
    * [.connected()](#MRMedia+connected)
    * [.mutated(mutation)](#MRMedia+mutated)
    * [.computeObjectFitDimensions()](#MRMedia+computeObjectFitDimensions)

<a name="MRMedia+MRMedia"></a>

### mrMedia.MRMedia
**Kind**: instance class of [<code>MRMedia</code>](#MRMedia)  
<a name="new_MRMedia+MRMedia_new"></a>

#### new exports.MRMedia()
Constructs a base media entity using a UIPlane and other 3D elements as necessary.

<a name="MRMedia+width"></a>

### mrMedia.width() ⇒ <code>number</code>
Calculates the width of the media based on the media tag in the shadow root

**Kind**: instance method of [<code>MRMedia</code>](#MRMedia)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRMedia+height"></a>

### mrMedia.height() ⇒ <code>number</code>
Calculates the height of the media based on the media tag in the shadow root

**Kind**: instance method of [<code>MRMedia</code>](#MRMedia)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRMedia+connected"></a>

### mrMedia.connected()
Callback function of MREntity - handles setting up this media and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRMedia</code>](#MRMedia)  
<a name="MRMedia+mutated"></a>

### mrMedia.mutated(mutation)
Callback function of MREntity - Updates the media's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRMedia</code>](#MRMedia)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MRMedia+computeObjectFitDimensions"></a>

### mrMedia.computeObjectFitDimensions()
computes the width and height values for the image considering the value of object-fit

**Kind**: instance method of [<code>MRMedia</code>](#MRMedia)  
