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
    * [.update(deltaTime, frame)](#PhysicsSystem+update)
    * [.onContactStart(handle1, handle2)](#PhysicsSystem+onContactStart)
    * [.onContactEnd(handle1, handle2)](#PhysicsSystem+onContactEnd)
    * [.touchStart(collider1, collider2, entity)](#PhysicsSystem+touchStart)
    * [.touchEnd(entity)](#PhysicsSystem+touchEnd)
    * [.hoverStart(collider1, collider2, entity)](#PhysicsSystem+hoverStart)
    * [.hoverEnd(entity)](#PhysicsSystem+hoverEnd)
    * [.onNewEntity(entity)](#PhysicsSystem+onNewEntity)
    * [.initPhysicsBody(entity)](#PhysicsSystem+initPhysicsBody)
    * [.updateBody(entity)](#PhysicsSystem+updateBody)
    * [.initColliderDesc(physicsData)](#PhysicsSystem+initColliderDesc) ⇒ <code>object</code>
    * [.updateCollider(entity)](#PhysicsSystem+updateCollider)
    * [.updateDebugRenderer()](#PhysicsSystem+updateDebugRenderer)

<a name="PhysicsSystem+PhysicsSystem"></a>

### physicsSystem.PhysicsSystem
**Kind**: instance class of [<code>PhysicsSystem</code>](#PhysicsSystem)  
<a name="new_PhysicsSystem+PhysicsSystem_new"></a>

#### new exports.PhysicsSystem()
PhysicsSystem's default constructor - sets up useful world and debug information alongside an initial `Rapier` event queue.

<a name="PhysicsSystem+update"></a>

### physicsSystem.update(deltaTime, frame)
The generic system update call. Based on the captured physics events for the frame, handles all items appropriately.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="PhysicsSystem+onContactStart"></a>

### physicsSystem.onContactStart(handle1, handle2)
Handles the start of collisions between two different colliders.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| handle1 | <code>number</code> | the first collider |
| handle2 | <code>number</code> | the second collider |

<a name="PhysicsSystem+onContactEnd"></a>

### physicsSystem.onContactEnd(handle1, handle2)
Handles the end of collisions between two different colliders.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| handle1 | <code>number</code> | the first collider |
| handle2 | <code>number</code> | the second collider |

<a name="PhysicsSystem+touchStart"></a>

### physicsSystem.touchStart(collider1, collider2, entity)
Handles the start of touch between two different colliders and the current entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| collider1 | <code>number</code> | the first collider |
| collider2 | <code>number</code> | the second collider |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+touchEnd"></a>

### physicsSystem.touchEnd(entity)
Handles the end of touch for the current entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+hoverStart"></a>

### physicsSystem.hoverStart(collider1, collider2, entity)
Handles the start of hovering over/around a specific entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| collider1 | <code>number</code> | the first collider |
| collider2 | <code>number</code> | the second collider |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+hoverEnd"></a>

### physicsSystem.hoverEnd(entity)
Handles the end of hovering over/around a specific entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the current entity |

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

<a name="PhysicsSystem+updateBody"></a>

### physicsSystem.updateBody(entity)
Updates the rigid body used by the physics part of the entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+initColliderDesc"></a>

### physicsSystem.initColliderDesc(physicsData) ⇒ <code>object</code>
Initializes a collider based on the physics data.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  
**Returns**: <code>object</code> - - the Rapier physics collider object  

| Param | Type | Description |
| --- | --- | --- |
| physicsData | <code>object</code> | data needed to be used to setup the collider interaction |

<a name="PhysicsSystem+updateCollider"></a>

### physicsSystem.updateCollider(entity)
Updates the collider used by the entity based on whether it's being used as a UI element, the main box element, etc.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateDebugRenderer"></a>

### physicsSystem.updateDebugRenderer()
Updates the debug renderer to either be on or off based on the 'this.debug' variable. Handles the drawing of the visual lines.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  
