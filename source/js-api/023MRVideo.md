---
title: MRVideo
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRVideo.js
---
# MRVideo

<a name="MRVideo"></a>

## MRVideo ⇐ <code>MRDivEntity</code>
Base html video represented in 3D space. `mr-video`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRVideo](#MRVideo) ⇐ <code>MRDivEntity</code>
    * [.MRVideo](#MRVideo+MRVideo)
        * [new exports.MRVideo()](#new_MRVideo+MRVideo_new)
    * [.width()](#MRVideo+width) ⇒ <code>number</code>
    * [.height()](#MRVideo+height) ⇒ <code>number</code>
    * [.connected()](#MRVideo+connected)
    * [.mutated(mutation)](#MRVideo+mutated)
    * [.computeVideoObject3DFitDimensions()](#MRVideo+computeVideoObject3DFitDimensions)
    * [.play()](#MRVideo+play)
    * [.pause()](#MRVideo+pause)
    * [.cover(texture, aspect)](#MRVideo+cover)

<a name="MRVideo+MRVideo"></a>

### mrVideo.MRVideo
**Kind**: instance class of [<code>MRVideo</code>](#MRVideo)  
<a name="new_MRVideo+MRVideo_new"></a>

#### new exports.MRVideo()
Constructs a base video entity using a UIPlane and other 3D elements as necessary.

<a name="MRVideo+width"></a>

### mrVideo.width() ⇒ <code>number</code>
Calculates the width of the video based on the video tag in the shadow root

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRVideo+height"></a>

### mrVideo.height() ⇒ <code>number</code>
Calculates the height of the video based on the video tag in the shadow root

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRVideo+connected"></a>

### mrVideo.connected()
Callback function of MREntity - handles setting up this video and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
<a name="MRVideo+mutated"></a>

### mrVideo.mutated(mutation)
Callback function of MREntity - Updates the video's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MRVideo+computeVideoObject3DFitDimensions"></a>

### mrVideo.computeVideoObject3DFitDimensions()
computes the width and height values for the video considering the value of object-fit

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
<a name="MRVideo+play"></a>

### mrVideo.play()
Plays the video in the shadow root

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
<a name="MRVideo+pause"></a>

### mrVideo.pause()
Pauses the video in the shadow root

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
<a name="MRVideo+cover"></a>

### mrVideo.cover(texture, aspect)
Calculates the texture UV transformation change based on the video's aspect ratio.

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>object</code> | the texture to augment |
| aspect | <code>number</code> | a given expected aspect ratio |

