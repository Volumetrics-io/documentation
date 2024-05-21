---
title: MRVolumeEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRVolumeEntity.js
---
# MRVolumeEntity

<a name="MRVolumeEntity"></a>

## MRVolumeEntity ⇐ <code>MREntity</code>
Representation of a visible region in 3D space. Models and other entities can move
throughout the space and leave the space, yet will only be rendered in the visual area of
the volume. From a conceptual perspective it is considered a ‘clipping volume’.

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRVolumeEntity](#MRVolumeEntity) ⇐ <code>MREntity</code>
    * [.MRVolumeEntity](#MRVolumeEntity+MRVolumeEntity)
        * [new exports.MRVolumeEntity()](#new_MRVolumeEntity+MRVolumeEntity_new)
    * [.connected()](#MRVolumeEntity+connected)

<a name="MRVolumeEntity+MRVolumeEntity"></a>

### mrVolumeEntity.MRVolumeEntity
**Kind**: instance class of [<code>MRVolumeEntity</code>](#MRVolumeEntity)  
<a name="new_MRVolumeEntity+MRVolumeEntity_new"></a>

#### new exports.MRVolumeEntity()
Creates the volume as a base THREE.js object3D

<a name="MRVolumeEntity+connected"></a>

### mrVolumeEntity.connected()
(async) handles creating clipping geometry around the entire volume for visible restrictions.

**Kind**: instance method of [<code>MRVolumeEntity</code>](#MRVolumeEntity)  
