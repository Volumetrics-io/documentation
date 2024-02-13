---
title: MaskingSystem
---
# MaskingSystem

<a name="MaskingSystem"></a>

## MaskingSystem ⇐ <code>MRSystem</code>
Handles specific needs for setting up the masking for all necessary items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [MaskingSystem](#MaskingSystem) ⇐ <code>MRSystem</code>
    * [.MaskingSystem](#MaskingSystem+MaskingSystem)
        * [new exports.MaskingSystem()](#new_MaskingSystem+MaskingSystem_new)
    * [.needsSystemUpdate()](#MaskingSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#MaskingSystem+needsSystemUpdate)
    * [.update(deltaTime, frame)](#MaskingSystem+update)
    * [.onNewEntity(entity)](#MaskingSystem+onNewEntity)

<a name="MaskingSystem+MaskingSystem"></a>

### maskingSystem.MaskingSystem
**Kind**: instance class of [<code>MaskingSystem</code>](#MaskingSystem)  
<a name="new_MaskingSystem+MaskingSystem_new"></a>

#### new exports.MaskingSystem()
MaskingSystem's default constructor.

<a name="MaskingSystem+needsSystemUpdate"></a>

### maskingSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MaskingSystem+needsSystemUpdate"></a>

### maskingSystem.needsSystemUpdate()
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  
<a name="MaskingSystem+update"></a>

### maskingSystem.update(deltaTime, frame)
...

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MaskingSystem+onNewEntity"></a>

### maskingSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Handles masking elements to their panel.

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/MaskingSystem.js' target='_blank'>Suggest an edit on GitHub for MaskingSystem.js</a></div>
