---
title: InstancingSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/InstancingSystem.js
---
# InstancingSystem

<a name="InstancingSystem"></a>

## InstancingSystem ⇐ <code>MRSystem</code>
System that allows for instancing of meshes based on a given entity where the instances can be modified separately.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [InstancingSystem](#InstancingSystem) ⇐ <code>MRSystem</code>
    * [.InstancingSystem](#InstancingSystem+InstancingSystem)
        * [new exports.InstancingSystem()](#new_InstancingSystem+InstancingSystem_new)
    * [.needsSystemUpdate()](#InstancingSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#InstancingSystem+needsSystemUpdate)
    * [.update(deltaTime, frame)](#InstancingSystem+update)
    * [.attachedComponent(entity)](#InstancingSystem+attachedComponent)
    * [.random(entity)](#InstancingSystem+random)

<a name="InstancingSystem+InstancingSystem"></a>

### instancingSystem.InstancingSystem
**Kind**: instance class of [<code>InstancingSystem</code>](#InstancingSystem)  
<a name="new_InstancingSystem+InstancingSystem_new"></a>

#### new exports.InstancingSystem()
InstancingSystem's default constructor that sets up default instancing count, transformations, and mesh information.

<a name="InstancingSystem+needsSystemUpdate"></a>

### instancingSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="InstancingSystem+needsSystemUpdate"></a>

### instancingSystem.needsSystemUpdate()
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  
<a name="InstancingSystem+update"></a>

### instancingSystem.update(deltaTime, frame)
The generic system update call. Updates the entity and its instances to their appropriate transformations and visuals
              based on the picked predefined option.

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="InstancingSystem+attachedComponent"></a>

### instancingSystem.attachedComponent(entity)
Determines what meshes are attached from this entity and When a component is attached.
Setups up instancing based on the predefined setup option and the entity's geometry (handling properly whether that be a group or mesh).

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity with the geometry to be instanced and the chosen setup option |

<a name="InstancingSystem+random"></a>

### instancingSystem.random(entity)
An option for default instancing. Places the given entity instancing it at a bunch of random transformation locations.Uses threejs's `InstancedMesh`.

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be instanced in random locations |

