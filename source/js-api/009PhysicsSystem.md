---
title: PhysicsSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/PhysicsSystem.js
---
# PhysicsSystem

<a name="PhysicsSystem"></a>

## PhysicsSystem ⇐ <code>MRSystem</code>
The physics system functions differently from other systems,
Rather than attaching components, physical properties such as
shape, body, mass, etc are definied as attributes.
if shape and body are not defined, they default to the geometry
of the entity, if there is no geometry, there is no physics defined
on the entity.

Alternatively, you can also expressly attach a comp-physics
attribute for more detailed control.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [PhysicsSystem](#PhysicsSystem) ⇐ <code>MRSystem</code>
    * [.PhysicsSystem](#PhysicsSystem+PhysicsSystem)
        * [new exports.PhysicsSystem()](#new_PhysicsSystem+PhysicsSystem_new)
    * [.eventUpdate()](#PhysicsSystem+eventUpdate)
    * [.update(deltaTime, frame)](#PhysicsSystem+update)
    * [.onNewEntity(entity)](#PhysicsSystem+onNewEntity)
    * [.initPhysicsBody(entity)](#PhysicsSystem+initPhysicsBody)
    * [.initUIEntityBody(entity)](#PhysicsSystem+initUIEntityBody)
    * [.initSimpleBody(entity)](#PhysicsSystem+initSimpleBody)
    * [.initDetailedBody(entity)](#PhysicsSystem+initDetailedBody)
    * [.initConvexMeshCollider(entity)](#PhysicsSystem+initConvexMeshCollider)
    * [.updateBody(entity)](#PhysicsSystem+updateBody)
    * [.updateUIBody(entity)](#PhysicsSystem+updateUIBody)
    * [.updateSimpleBody(entity)](#PhysicsSystem+updateSimpleBody)
    * [.updateDebugRenderer()](#PhysicsSystem+updateDebugRenderer)

<a name="PhysicsSystem+PhysicsSystem"></a>

### physicsSystem.PhysicsSystem
**Kind**: instance class of [<code>PhysicsSystem</code>](#PhysicsSystem)  
<a name="new_PhysicsSystem+PhysicsSystem_new"></a>

#### new exports.PhysicsSystem()
PhysicsSystem's default constructor - sets up useful world and debug information alongside an initial `Rapier` event queue.

<a name="PhysicsSystem+eventUpdate"></a>

### physicsSystem.eventUpdate()
The per global scene event update call.  Based on the captured physics events for the frame, handles all items appropriately.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  
<a name="PhysicsSystem+update"></a>

### physicsSystem.update(deltaTime, frame)
The per-frame system update call. Based on the captured physics events for the frame, handles all items appropriately.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="PhysicsSystem+onNewEntity"></a>

### physicsSystem.onNewEntity(entity)
When a new entity is created, adds it to the physics registry and initializes the physics aspects of the entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being set up |

<a name="PhysicsSystem+initPhysicsBody"></a>

### physicsSystem.initPhysicsBody(entity)
Initializes the rigid body used by the physics part of the entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+initUIEntityBody"></a>

### physicsSystem.initUIEntityBody(entity)
Initializes the rigid body used by the physics for non-nr-model div entities

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+initSimpleBody"></a>

### physicsSystem.initSimpleBody(entity)
Initializes a simple bounding box collider based on the visual bounds of the entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+initDetailedBody"></a>

### physicsSystem.initDetailedBody(entity)
Initializes a Rigid Body detailed convexMesh collider for the entity
NOTE: not currently in use until we can sync it with animations

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+initConvexMeshCollider"></a>

### physicsSystem.initConvexMeshCollider(entity)
Initializes a convexMesh collider from a THREE.js geometry
NOTE: not currently in use until we can sync it with animations

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateBody"></a>

### physicsSystem.updateBody(entity)
Updates the rigid body used by the physics part of the entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateUIBody"></a>

### physicsSystem.updateUIBody(entity)
Updates the rigid body used by the physics part of the div entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateSimpleBody"></a>

### physicsSystem.updateSimpleBody(entity)
Updates the rigid body used by the physics part of the model entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateDebugRenderer"></a>

### physicsSystem.updateDebugRenderer()
Updates the debug renderer to either be on or off based on the 'this.debug' variable. Handles the drawing of the visual lines.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  
