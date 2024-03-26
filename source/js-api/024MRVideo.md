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
    * [.connected()](#MRVideo+connected)
    * [.play()](#MRVideo+play)
    * [.pause()](#MRVideo+pause)

<a name="MRVideo+MRVideo"></a>

### mrVideo.MRVideo
**Kind**: instance class of [<code>MRVideo</code>](#MRVideo)  
<a name="new_MRVideo+MRVideo_new"></a>

#### new exports.MRVideo()
Constructs a base video entity using a UIPlane and other 3D elements as necessary.

<a name="MRVideo+connected"></a>

### mrVideo.connected()
Callback function of MREntity - handles setting up this video and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
<a name="MRVideo+play"></a>

### mrVideo.play()
Plays the video in the shadow root

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
<a name="MRVideo+pause"></a>

### mrVideo.pause()
Pauses the video in the shadow root

**Kind**: instance method of [<code>MRVideo</code>](#MRVideo)  
