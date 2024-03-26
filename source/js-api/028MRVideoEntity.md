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
    * [.connected()](#MRVideoEntity+connected)
    * [.play()](#MRVideoEntity+play)
    * [.pause()](#MRVideoEntity+pause)

<a name="MRVideoEntity+MRVideoEntity"></a>

### mrVideoEntity.MRVideoEntity
**Kind**: instance class of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="new_MRVideoEntity+MRVideoEntity_new"></a>

#### new exports.MRVideoEntity()
Constructs a base video entity using a UIPlane and other 3D elements as necessary.

<a name="MRVideoEntity+connected"></a>

### mrVideoEntity.connected()
Callback function of MREntity - handles setting up this video and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="MRVideoEntity+play"></a>

### mrVideoEntity.play()
Plays the video in the shadow root

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
<a name="MRVideoEntity+pause"></a>

### mrVideoEntity.pause()
Pauses the video in the shadow root

**Kind**: instance method of [<code>MRVideoEntity</code>](#MRVideoEntity)  
