---
title: ClippingSystem
---
# ClippingSystem

<a name="ClippingSystem"></a>

## ClippingSystem ⇐ <code>MRSystem</code>
This system supports 3D clipping following threejs's clipping planes setup.
             See https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes for more information.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ClippingSystem](#ClippingSystem) ⇐ <code>MRSystem</code>
    * [.ClippingSystem](#ClippingSystem+ClippingSystem)
        * [new exports.ClippingSystem()](#new_ClippingSystem+ClippingSystem_new)
    * [.needsSystemUpdate()](#ClippingSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#ClippingSystem+needsSystemUpdate)
    * [.update(deltaTime, frame)](#ClippingSystem+update)
    * [.updatePlanes(entity)](#ClippingSystem+updatePlanes)
    * [.applyClipping(object, clipping)](#ClippingSystem+applyClipping)
    * [.addClippingPlanes(entity)](#ClippingSystem+addClippingPlanes)
    * [.onNewEntity(entity)](#ClippingSystem+onNewEntity)

<a name="ClippingSystem+ClippingSystem"></a>

### clippingSystem.ClippingSystem
**Kind**: instance class of [<code>ClippingSystem</code>](#ClippingSystem)  
<a name="new_ClippingSystem+ClippingSystem_new"></a>

#### new exports.ClippingSystem()
ClippingSystem's default constructor that sets up coplanar points and the default clipping information.

<a name="ClippingSystem+needsSystemUpdate"></a>

### clippingSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="ClippingSystem+needsSystemUpdate"></a>

### clippingSystem.needsSystemUpdate()
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  
<a name="ClippingSystem+update"></a>

### clippingSystem.update(deltaTime, frame)
The generic system update call. Updates the clipped view of every entity in this system's registry.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ClippingSystem+updatePlanes"></a>

### clippingSystem.updatePlanes(entity)
Updates the stored clipping planes to be based on the passed in entity.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | given entity that will be used to create the clipping planes positioning. |

<a name="ClippingSystem+applyClipping"></a>

### clippingSystem.applyClipping(object, clipping)
Helper method for `onNewEntity`. Actually applies the clipping planes to the material setup for rendering.
Uses threejs in the background following https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| object | <code>object</code> | the object3D item to be clipped |
| clipping | <code>MRClippingGeometry</code> | the clipping information to be passed to the material |

<a name="ClippingSystem+addClippingPlanes"></a>

### clippingSystem.addClippingPlanes(entity)
Helper method for `onNewEntity`. Creates a clipping planes information (still writing this description)

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to which we're adding the clipping planes information |

<a name="ClippingSystem+onNewEntity"></a>

### clippingSystem.onNewEntity(entity)
When the system swaps to a new entity, this handles applying the clipping planes as needed in the system run.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | given entity that will be clipped by the planes. |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/ClippingSystem.js' target='_blank'>Suggest an edit on GitHub for ClippingSystem.js</a></div>
