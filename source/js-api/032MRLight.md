---
title: MRLight
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRLight.js
---
# MRLight

<a name="MRLight"></a>

## MRLight ⇐ <code>MREntity</code>
Represents lights in 3D space. `mr-light`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRLight](#MRLight) ⇐ <code>MREntity</code>
    * [.MRLight](#MRLight+MRLight)
        * [new exports.MRLight()](#new_MRLight+MRLight_new)
    * [.connected()](#MRLight+connected)
    * [.mutated(mutation)](#MRLight+mutated)

<a name="MRLight+MRLight"></a>

### mrLight.MRLight
**Kind**: instance class of [<code>MRLight</code>](#MRLight)  
<a name="new_MRLight+MRLight_new"></a>

#### new exports.MRLight()
Constructs the base 3D object.

<a name="MRLight+connected"></a>

### mrLight.connected()
Callback function of MREntity - handles setting up this Light once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRLight</code>](#MRLight)  
<a name="MRLight+mutated"></a>

### mrLight.mutated(mutation)
Callback function of MREntity - Updates the lights color and intensity as requested.

**Kind**: instance method of [<code>MRLight</code>](#MRLight)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

