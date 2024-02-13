---
title: LayoutSystem
---
# LayoutSystem

<a name="LayoutSystem"></a>

## LayoutSystem ⇐ <code>MRSystem</code>
System that allows for setup and handling of changing layout.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [LayoutSystem](#LayoutSystem) ⇐ <code>MRSystem</code>
    * [.LayoutSystem](#LayoutSystem+LayoutSystem)
        * [new exports.LayoutSystem()](#new_LayoutSystem+LayoutSystem_new)
    * [.onNewEntity(entity)](#LayoutSystem+onNewEntity)
    * [.needsSystemUpdate()](#LayoutSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#LayoutSystem+needsSystemUpdate)
    * [.update(deltaTime, frame)](#LayoutSystem+update)
    * [.setLayoutPosition(entity)](#LayoutSystem+setLayoutPosition)

<a name="LayoutSystem+LayoutSystem"></a>

### layoutSystem.LayoutSystem
**Kind**: instance class of [<code>LayoutSystem</code>](#LayoutSystem)  
<a name="new_LayoutSystem+LayoutSystem_new"></a>

#### new exports.LayoutSystem()
Constructor for the layout system. Uses the default System setup.

<a name="LayoutSystem+onNewEntity"></a>

### layoutSystem.onNewEntity(entity)
Called when a new entity is added to this system

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="LayoutSystem+needsSystemUpdate"></a>

### layoutSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="LayoutSystem+needsSystemUpdate"></a>

### layoutSystem.needsSystemUpdate()
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  
<a name="LayoutSystem+update"></a>

### layoutSystem.update(deltaTime, frame)
The generic system update call. Handles updating all 3D items to match whatever layout position is expected.

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="LayoutSystem+setLayoutPosition"></a>

### layoutSystem.setLayoutPosition(entity)
Helper function for the update call. Sets the entity's appropriate 3D layout position based on window and entity expectations.

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated. |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/LayoutSystem.js' target='_blank'>Suggest an edit on GitHub for LayoutSystem.js</a></div>
