---
title: MRStatsEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRStatsEntity.js
---
# MRStatsEntity

<a name="MRStatsEntity"></a>

## MRStatsEntity ⇐ <code>MRTextEntity</code>
The FPS counter entity. For simplicity, easy implementation, and good performance,
           it is based on MRTextEntity and just shows the FPS counter number as text for now.
           Ideally we want to improve later, like improving the visual quality and more info.
           Note that stats entity that has a huge bad performance impact doesn't really make
           sense so it should be kept simple and fast.

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRStatsEntity](#MRStatsEntity) ⇐ <code>MRTextEntity</code>
    * [.MRStatsEntity](#MRStatsEntity+MRStatsEntity)
        * [new exports.MRStatsEntity()](#new_MRStatsEntity+MRStatsEntity_new)

<a name="MRStatsEntity+MRStatsEntity"></a>

### mrStatsEntity.MRStatsEntity
**Kind**: instance class of [<code>MRStatsEntity</code>](#MRStatsEntity)  
<a name="new_MRStatsEntity+MRStatsEntity_new"></a>

#### new exports.MRStatsEntity()
Constructor for the MRStatsEntity object.
             Initializes some variables used to track and calculate the fps.

