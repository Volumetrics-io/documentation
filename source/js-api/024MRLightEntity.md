---
title: MRLightEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRLightEntity.js
---
# MRLightEntity

<a name="MRLightEntity"></a>

## MRLightEntity ⇐ <code>MREntity</code>
Represents lights in 3D space. `mr-light`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRLightEntity](#MRLightEntity) ⇐ <code>MREntity</code>
    * [.MRLightEntity](#MRLightEntity+MRLightEntity)
        * [new exports.MRLightEntity()](#new_MRLightEntity+MRLightEntity_new)
    * [.connected()](#MRLightEntity+connected)
    * [.mutated(mutation)](#MRLightEntity+mutated)

<a name="MRLightEntity+MRLightEntity"></a>

### mrLightEntity.MRLightEntity
**Kind**: instance class of [<code>MRLightEntity</code>](#MRLightEntity)  
<a name="new_MRLightEntity+MRLightEntity_new"></a>

#### new exports.MRLightEntity()
Constructs the base 3D object.

<a name="MRLightEntity+connected"></a>

### mrLightEntity.connected()
(async) handles setting up this Light once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRLightEntity</code>](#MRLightEntity)  
<a name="MRLightEntity+mutated"></a>

### mrLightEntity.mutated(mutation)
(async) Updates the lights color and intensity as requested.

**Kind**: instance method of [<code>MRLightEntity</code>](#MRLightEntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

