---
description: "Javascript API"
---
# Javascript API


<a name="MRSystem"></a>

## MRSystem
The default representation of an MRSystem to be expanded upon by actual details ECS System items.

**Kind**: global class  

* [MRSystem](#MRSystem)
    * [.MRSystem](#MRSystem+MRSystem)
        * [new exports.MRSystem(useComponents, frameRate)](#new_MRSystem+MRSystem_new)
    * [.needsUpdate(deltaTime, frame)](#MRSystem+needsUpdate) ⇒ <code>boolean</code>
    * [.__update(deltaTime, frame)](#MRSystem+__update)
    * [.update(deltaTime, frame)](#MRSystem+update)
    * [.onNewEntity(entity)](#MRSystem+onNewEntity)
    * [.attachedComponent(entity)](#MRSystem+attachedComponent)
    * [.updatedComponent(entity, oldData)](#MRSystem+updatedComponent)
    * [.detachedComponent(entity)](#MRSystem+detachedComponent)
    * [.onAttach(event)](#MRSystem+onAttach)
    * [.onUpdate(event)](#MRSystem+onUpdate)
    * [.onDetach(event)](#MRSystem+onDetach)

<a name="MRSystem+MRSystem"></a>

### mrSystem.MRSystem
**Kind**: instance class of [<code>MRSystem</code>](#MRSystem)  
<a name="new_MRSystem+MRSystem_new"></a>

#### new exports.MRSystem(useComponents, frameRate)
Constructor for MRSystem. Sets up appropriate document event listeners, component defaults, and system defaults that will be used for system runs ever frame.


| Param | Type | Default | Description |
| --- | --- | --- | --- |
| useComponents | <code>boolean</code> | <code>true</code> | Default to true. Determines whether comonents need to be maintained (attached/updated/detached) with the system. |
| frameRate | <code>number</code> | <code></code> | Default to null. When set, used and updated as part of the System's update function. |

<a name="MRSystem+needsUpdate"></a>

### mrSystem.needsUpdate(deltaTime, frame) ⇒ <code>boolean</code>
Checks if we need to run the generic system update call. Default implementation returns true if there are
any items in the system's registry. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where an update is needed to be run this render call, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+__update"></a>

### mrSystem.\_\_update(deltaTime, frame)
The actual system update call.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+update"></a>

### mrSystem.update(deltaTime, frame)
The generic system update call.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+onNewEntity"></a>

### mrSystem.onNewEntity(entity)
Called when a new entity is added to the scene

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="MRSystem+attachedComponent"></a>

### mrSystem.attachedComponent(entity)
Called when the entity component is initialized

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being attached/initialized. |

<a name="MRSystem+updatedComponent"></a>

### mrSystem.updatedComponent(entity, oldData)
Called when a specific entity component is being updated

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |
| oldData | <code>object</code> | the |

<a name="MRSystem+detachedComponent"></a>

### mrSystem.detachedComponent(entity)
Called when the entity component is removed

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity component being removed. |

<a name="MRSystem+onAttach"></a>

### mrSystem.onAttach(event)
Handles the component and registry aspect of the event when an entity component attaches to this system.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the attach event |

<a name="MRSystem+onUpdate"></a>

### mrSystem.onUpdate(event)
Handles the component and registry update of the even when an entity component needs to change.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the update event |

<a name="MRSystem+onDetach"></a>

### mrSystem.onDetach(event)
Handles the component and registry aspect of the even when an entity component detaches from this system.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the detach event |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/MRSystem.js</a></div>


<a name="MRPlaneManager"></a>

## MRPlaneManager
creates and manages the mr.js representation of XR planes.
The resulting planes have RAPIER rigid bodies and THREE.js meshes that occlude virtual content by default

**Kind**: global class  

* [MRPlaneManager](#MRPlaneManager)
    * [.MRPlaneManager](#MRPlaneManager+MRPlaneManager)
        * [new exports.MRPlaneManager(scene, physicsWorld)](#new_MRPlaneManager+MRPlaneManager_new)
    * [.initPhysicsBody(plane)](#MRPlaneManager+initPhysicsBody)

<a name="MRPlaneManager+MRPlaneManager"></a>

### mrPlaneManager.MRPlaneManager
**Kind**: instance class of [<code>MRPlaneManager</code>](#MRPlaneManager)  
<a name="new_MRPlaneManager+MRPlaneManager_new"></a>

#### new exports.MRPlaneManager(scene, physicsWorld)

| Param |
| --- |
| scene | 
| physicsWorld | 

<a name="MRPlaneManager+initPhysicsBody"></a>

### mrPlaneManager.initPhysicsBody(plane)
initializes the physics body of an MR Plane

**Kind**: instance method of [<code>MRPlaneManager</code>](#MRPlaneManager)  

| Param |
| --- |
| plane | 


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/managers/MRPlaneManager.js' target='_blank'>Suggest an edit on GitHub for src/core/managers/MRPlaneManager.js</a></div>


<a name="MRDivEntity"></a>

## MRDivEntity ⇐ <code>MREntity</code>
The MREntity that is used to solely describe UI Elements. Defaults as the html `mr-div` representation. `mr-div`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRDivEntity](#MRDivEntity) ⇐ <code>MREntity</code>
    * [.MRDivEntity](#MRDivEntity+MRDivEntity)
        * [new exports.MRDivEntity()](#new_MRDivEntity+MRDivEntity_new)
    * [.height()](#MRDivEntity+height) ⇒ <code>number</code>
    * [.width()](#MRDivEntity+width) ⇒ <code>number</code>
    * [.add(entity)](#MRDivEntity+add)
    * [.remove(entity)](#MRDivEntity+remove)
    * [.connected()](#MRDivEntity+connected)
    * [.updatePhysicsData()](#MRDivEntity+updatePhysicsData)
    * [.domToThree(val)](#MRDivEntity+domToThree) ⇒ <code>number</code>
    * [.updateStyle()](#MRDivEntity+updateStyle)
    * [.setBorder()](#MRDivEntity+setBorder)
    * [.setBackground()](#MRDivEntity+setBackground)

<a name="MRDivEntity+MRDivEntity"></a>

### mrDivEntity.MRDivEntity
**Kind**: instance class of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="new_MRDivEntity+MRDivEntity_new"></a>

#### new exports.MRDivEntity()
Constructor sets up the defaults for the background mesh, scaling, and world relevant elements.

<a name="MRDivEntity+height"></a>

### mrDivEntity.height() ⇒ <code>number</code>
Calculates the height of the Entity based on the viewing-client's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRDivEntity+width"></a>

### mrDivEntity.width() ⇒ <code>number</code>
Calculates the width of the Entity based on the viewing-client's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRDivEntity+add"></a>

### mrDivEntity.add(entity)
Adding an entity as a sub-object of this panel (for example an mr-model, button, etc).

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRDivEntity+remove"></a>

### mrDivEntity.remove(entity)
Removing an entity as a sub-object of this panel (for example an mr-model, button, etc).

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed added. |

<a name="MRDivEntity+connected"></a>

### mrDivEntity.connected()
Callback function of MREntity - connects the background geometry of this item to an actual UIPlane geometry.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+updatePhysicsData"></a>

### mrDivEntity.updatePhysicsData()
Updates the physics data for the current iteration. Calculates this.physics based on current stored object3D information.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+domToThree"></a>

### mrDivEntity.domToThree(val) ⇒ <code>number</code>
Converts the dom string to a 3D numerical value

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the 3D numerical represenation of the dom css value  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>string</code> | the dom css information includes items of the form `XXXpx`, `XXX%`, etc |

<a name="MRDivEntity+updateStyle"></a>

### mrDivEntity.updateStyle()
Updates the style for the UIPlane's border and background based on compStyle and inputted css
elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+setBorder"></a>

### mrDivEntity.setBorder()
Sets the border of the UI based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+setBackground"></a>

### mrDivEntity.setBackground()
Sets the background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRDivEntity.js' target='_blank'>Suggest an edit on GitHub for src/core/MRDivEntity.js</a></div>


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
    * [.needsUpdate(deltaTime, frame)](#PhysicsSystem+needsUpdate) ⇒ <code>boolean</code>
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

<a name="PhysicsSystem+needsUpdate"></a>

### physicsSystem.needsUpdate(deltaTime, frame) ⇒ <code>boolean</code>
Checks if we need to run the generic system update call. Default implementation returns true if there are
any items in the system's registry. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where an update is needed to be run this render call, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

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

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/PhysicsSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/PhysicsSystem.js</a></div>


<a name="ClippingSystem"></a>

## ClippingSystem ⇐ <code>MRSystem</code>
This system supports 3D clipping following threejs's clipping planes setup.
             See https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes for more information.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ClippingSystem](#ClippingSystem) ⇐ <code>MRSystem</code>
    * [.ClippingSystem](#ClippingSystem+ClippingSystem)
        * [new exports.ClippingSystem()](#new_ClippingSystem+ClippingSystem_new)
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
| clipping | <code>ClippingGeometry</code> | the clipping information to be passed to the material |

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


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/ClippingSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/ClippingSystem.js</a></div>


<a name="LayoutSystem"></a>

## LayoutSystem ⇐ <code>MRSystem</code>
System that allows for setup and handling of changing layout.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [LayoutSystem](#LayoutSystem) ⇐ <code>MRSystem</code>
    * [.LayoutSystem](#LayoutSystem+LayoutSystem)
        * [new exports.LayoutSystem()](#new_LayoutSystem+LayoutSystem_new)
    * [.onNewEntity(entity)](#LayoutSystem+onNewEntity)
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


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/LayoutSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/LayoutSystem.js</a></div>


<a name="ControlSystem"></a>

## ControlSystem ⇐ <code>MRSystem</code>
This system supports interaction event information including mouse and controller interfacing.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ControlSystem](#ControlSystem) ⇐ <code>MRSystem</code>
    * [.ControlSystem](#ControlSystem+ControlSystem)
        * [new exports.ControlSystem()](#new_ControlSystem+ControlSystem_new)
    * [.needsUpdate(deltaTime, frame)](#ControlSystem+needsUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#ControlSystem+update)
    * [.mouseOver(event)](#ControlSystem+mouseOver)
    * [.onMouseDown(event)](#ControlSystem+onMouseDown)
    * [.onMouseUp(event)](#ControlSystem+onMouseUp)
    * [.removeCursor()](#ControlSystem+removeCursor)
    * [.pixelRayCast(event)](#ControlSystem+pixelRayCast) ⇒ <code>object</code>

<a name="ControlSystem+ControlSystem"></a>

### controlSystem.ControlSystem
**Kind**: instance class of [<code>ControlSystem</code>](#ControlSystem)  
<a name="new_ControlSystem+ControlSystem_new"></a>

#### new exports.ControlSystem()
ControlSystem's Default constructor that sets up the app's mouse information along with any relevant physics and cursor information.

<a name="ControlSystem+needsUpdate"></a>

### controlSystem.needsUpdate(deltaTime, frame) ⇒ <code>boolean</code>
Checks if we need to run the generic system update call. Default implementation returns true if there are
any items in the system's registry. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where an update is needed to be run this render call, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ControlSystem+update"></a>

### controlSystem.update(deltaTime, frame)
The generic system update call. Updates the meshes and states for both the left and right hand visuals.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ControlSystem+mouseOver"></a>

### controlSystem.mouseOver(event)
Handles the mouse over event

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouse over event |

<a name="ControlSystem+onMouseDown"></a>

### controlSystem.onMouseDown(event)
Handles the mouse down event

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouse down event |

<a name="ControlSystem+onMouseUp"></a>

### controlSystem.onMouseUp(event)
Handles the mouse up event

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouse up event |

<a name="ControlSystem+removeCursor"></a>

### controlSystem.removeCursor()
Handles the removeCursor callback.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
<a name="ControlSystem+pixelRayCast"></a>

### controlSystem.pixelRayCast(event) ⇒ <code>object</code>
Raycast into the scene using the information from the event that called it.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
**Returns**: <code>object</code> - - collision item for what the ray hit in the 3d scene.  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the event being handled |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/ControlSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/ControlSystem.js</a></div>


<a name="StyleSystem"></a>

## StyleSystem ⇐ <code>MRSystem</code>
Handles style updates for all items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [StyleSystem](#StyleSystem) ⇐ <code>MRSystem</code>
    * [.StyleSystem](#StyleSystem+StyleSystem)
        * [new exports.StyleSystem()](#new_StyleSystem+StyleSystem_new)
    * [.update(deltaTime, frame)](#StyleSystem+update)
    * [.onNewEntity(entity)](#StyleSystem+onNewEntity)

<a name="StyleSystem+StyleSystem"></a>

### styleSystem.StyleSystem
**Kind**: instance class of [<code>StyleSystem</code>](#StyleSystem)  
<a name="new_StyleSystem+StyleSystem_new"></a>

#### new exports.StyleSystem()
StyleSystem's default constructor with a starting framerate of 1/30.

<a name="StyleSystem+update"></a>

### styleSystem.update(deltaTime, frame)
The generic system update call. Handles updating all 3D items to match whatever style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>StyleSystem</code>](#StyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="StyleSystem+onNewEntity"></a>

### styleSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Adds said new entity to the style's system registry.

**Kind**: instance method of [<code>StyleSystem</code>](#StyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/StyleSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/StyleSystem.js</a></div>


<a name="MRHand"></a>

## MRHand
Class describing the MRHand object representing the UX of the hand object for MR interactions.

**Kind**: global class  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| pinch | <code>boolean</code> | Indicates if the hand is in a pinch gesture. |
| jointPhysicsBodies | <code>object</code> | Physics bodies associated with the hand joints. |
| identityPosition | <code>THREE.Vector3</code> | A reference position for the hand. |
| tempJointPosition | <code>THREE.Vector3</code> | Temporary storage for a joint's position. |
| tempJointOrientation | <code>THREE.Quaternion</code> | Temporary storage for a joint's orientation. |
| controllerModelFactory | <code>XRControllerModelFactory</code> | Factory for creating controller models. |
| handModelFactory | <code>XRHandModelFactory</code> | Factory for creating hand models. |
| mesh | <code>THREE.Mesh</code> | The 3D mesh representing the hand. |
| controller | <code>THREE.Object3D</code> | The controller object. |
| grip | <code>THREE.Object3D</code> | The grip associated with the controller. |
| hand | <code>THREE.Object3D</code> | The 3D object representing the hand. |
| model | <code>THREE.Object3D</code> | The model of the hand. |


* [MRHand](#MRHand)
    * [.MRHand](#MRHand+MRHand)
        * [new exports.MRHand(handedness, app)](#new_MRHand+MRHand_new)
    * [.initPhysicsBodies(app)](#MRHand+initPhysicsBodies)
    * [.update()](#MRHand+update)
    * [.pinchMoved()](#MRHand+pinchMoved)
    * [.updatePhysicsBodies()](#MRHand+updatePhysicsBodies)
    * [.setMesh()](#MRHand+setMesh)
    * [.onSelect(event)](#MRHand+onSelect)
    * [.getJointOrientation(jointName)](#MRHand+getJointOrientation) ⇒ <code>THREE.Quaternion</code>
    * [.getJointPosition(jointName)](#MRHand+getJointPosition) ⇒ <code>THREE.Vector3</code>
    * [.getCursorPosition()](#MRHand+getCursorPosition) ⇒ <code>number</code>

<a name="MRHand+MRHand"></a>

### mrHand.MRHand
**Kind**: instance class of [<code>MRHand</code>](#MRHand)  
<a name="new_MRHand+MRHand_new"></a>

#### new exports.MRHand(handedness, app)
Constructor for the MRHand class object. Setups up all attributes for MRHand including physics, mouse/cursor information, hand tracking and state, and model
information.


| Param | Type | Description |
| --- | --- | --- |
| handedness | <code>object</code> | enum for the `left`` or `right` hand. |
| app | <code>object</code> | the current MRApp that contains the scene for the hand. |

<a name="MRHand+initPhysicsBodies"></a>

### mrHand.initPhysicsBodies(app)
Initializes the physics bodies that the hand represents. Useful for collision detection and UX interactions in MR space.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  

| Param | Type | Description |
| --- | --- | --- |
| app | <code>object</code> | the current MRApp that contains the scene for the hand. |

<a name="MRHand+update"></a>

### mrHand.update()
Update function for the Hand object. Updates the physics bodies and checks whether a pinch has happened or is in progress in any way.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+pinchMoved"></a>

### mrHand.pinchMoved()
If a pinch happens, updates the MR cursor position while sending out an event that movement has occured from this hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+updatePhysicsBodies"></a>

### mrHand.updatePhysicsBodies()
Update function for the physics associated with this hand. Runs for every joint in the system and moves all elements of the hand model.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+setMesh"></a>

### mrHand.setMesh()
Handles the setMesh callback.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+onSelect"></a>

### mrHand.onSelect(event)
Handles the onSelect event

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the on pinch event object |

<a name="MRHand+getJointOrientation"></a>

### mrHand.getJointOrientation(jointName) ⇒ <code>THREE.Quaternion</code>
Gets the joint orientation of the named joint in the hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>THREE.Quaternion</code> - - the quaternion representation or the joint orientation.  

| Param | Type | Description |
| --- | --- | --- |
| jointName | <code>string</code> | the string name of the joint whose information is requested. |

<a name="MRHand+getJointPosition"></a>

### mrHand.getJointPosition(jointName) ⇒ <code>THREE.Vector3</code>
Gets the joint position of the named joint in the hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>THREE.Vector3</code> - - the position representation or the joint orientation.  

| Param | Type | Description |
| --- | --- | --- |
| jointName | <code>string</code> | the string name of the joint whose information is requested. |

<a name="MRHand+getCursorPosition"></a>

### mrHand.getCursorPosition() ⇒ <code>number</code>
Gets the expected cursor position of this hand based on the index finger and thumb's tip positions.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>number</code> - - the resolved position of the cursor.  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRHand.js' target='_blank'>Suggest an edit on GitHub for src/core/MRHand.js</a></div>


<a name="SkyBox"></a>

## SkyBox ⇐ <code>MREntity</code>
The skybox entity that allows users to give multiple images to pattern into the 3D background space. `mr-skybox`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [SkyBox](#SkyBox) ⇐ <code>MREntity</code>
    * [.SkyBox](#SkyBox+SkyBox)
        * [new exports.SkyBox()](#new_SkyBox+SkyBox_new)
    * [.onTextureLoaded(texture)](#SkyBox+onTextureLoaded)
    * [.connected()](#SkyBox+connected)
    * [.onLoad()](#SkyBox+onLoad)

<a name="SkyBox+SkyBox"></a>

### skyBox.SkyBox
**Kind**: instance class of [<code>SkyBox</code>](#SkyBox)  
<a name="new_SkyBox+SkyBox_new"></a>

#### new exports.SkyBox()
Constructor for skybox - defaults to the usual impl of an Entity.

<a name="SkyBox+onTextureLoaded"></a>

### skyBox.onTextureLoaded(texture)
Callback function triggered when the texture is successfully loaded.
             It sets the loaded texture as the background and notifies all registered callbacks.

**Kind**: instance method of [<code>SkyBox</code>](#SkyBox)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>THREE.Texture</code> | The loaded texture. |

<a name="SkyBox+connected"></a>

### skyBox.connected()
Lifecycle method that is called when the entity is connected.
             This method initializes and starts the texture loading process.

**Kind**: instance method of [<code>SkyBox</code>](#SkyBox)  
<a name="SkyBox+onLoad"></a>

### skyBox.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>SkyBox</code>](#SkyBox)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/SkyBox.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/SkyBox.js</a></div>


<a name="Panel"></a>

## Panel ⇐ <code>MRDivEntity</code>
The main panel entity DOM used for webpages and UI elements in 3D space. `mr-panel`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [Panel](#Panel) ⇐ <code>MRDivEntity</code>
    * [.Panel](#Panel+Panel)
        * [new exports.Panel()](#new_Panel+Panel_new)
    * [.height()](#Panel+height) ⇒ <code>number</code>
    * [.connected()](#Panel+connected)
    * [.add(entity)](#Panel+add)
    * [.remove(entity)](#Panel+remove)
    * [.onTouch(event)](#Panel+onTouch)
    * [.momentumScroll(distance, duration)](#Panel+momentumScroll)
    * [.onScroll(event)](#Panel+onScroll)

<a name="Panel+Panel"></a>

### panel.Panel
**Kind**: instance class of [<code>Panel</code>](#Panel)  
<a name="new_Panel+Panel_new"></a>

#### new exports.Panel()
Constructor for the main Panel. Sets up all the relevant object3D and window information. Includes information necessary for proper scrolling usage.

<a name="Panel+height"></a>

### panel.height() ⇒ <code>number</code>
Calculates the height of the Entity. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>Panel</code>](#Panel)  
**Returns**: <code>number</code> - - the resolved height  
<a name="Panel+connected"></a>

### panel.connected()
Callback function of MREntity - handles setting up this Panel once it is connected to run as an entity component.
             Relevant tasks include setting up clipping and setting up for all necessary dispatchEvent connections including mutations and scrolling.

**Kind**: instance method of [<code>Panel</code>](#Panel)  
<a name="Panel+add"></a>

### panel.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="Panel+remove"></a>

### panel.remove(entity)
Remove an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="Panel+onTouch"></a>

### panel.onTouch(event)
Handles what should happen when a touch event is called. Updates items appropriately for scrolling on the panel.
             Triggers to use the browser's own scrolling without a need to fake the scrolling itself.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="Panel+momentumScroll"></a>

### panel.momentumScroll(distance, duration)
Helper function for the onTouch event function. Handles properly adjusting scroll for some momentum for a more natural feel.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| distance | <code>number</code> | the distance left to scroll |
| duration | <code>number</code> | the amount of time to do the scroll distance allowing for some movement instead of instant displacement. |

<a name="Panel+onScroll"></a>

### panel.onScroll(event)
Handles what should happen when a scroll event is called. Updates items appropriately for scrolling on the panel.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/Panel.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/Panel.js</a></div>


<a name="Image"></a>

## Image ⇐ <code>MRDivEntity</code>
Base html image represented in 3D space. `mr-image`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [Image](#Image) ⇐ <code>MRDivEntity</code>
    * [.Image](#Image+Image)
        * [new exports.Image()](#new_Image+Image_new)
    * [.width()](#Image+width) ⇒ <code>number</code>
    * [.height()](#Image+height) ⇒ <code>number</code>
    * [.borderRadii()](#Image+borderRadii) ⇒ <code>number</code>
    * [.connected()](#Image+connected)
    * [.updateStyle()](#Image+updateStyle)
    * [.mutated(mutation)](#Image+mutated)
    * [.computeObjectFitDimensions()](#Image+computeObjectFitDimensions)
    * [.cover(texture, aspect)](#Image+cover)

<a name="Image+Image"></a>

### image.Image
**Kind**: instance class of [<code>Image</code>](#Image)  
<a name="new_Image+Image_new"></a>

#### new exports.Image()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="Image+width"></a>

### image.width() ⇒ <code>number</code>
Calculates the width of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>Image</code>](#Image)  
**Returns**: <code>number</code> - - the resolved width  
<a name="Image+height"></a>

### image.height() ⇒ <code>number</code>
Calculates the height of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>Image</code>](#Image)  
**Returns**: <code>number</code> - - the resolved height  
<a name="Image+borderRadii"></a>

### image.borderRadii() ⇒ <code>number</code>
Calculates the border radius of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>Image</code>](#Image)  
**Returns**: <code>number</code> - - the resolved height  
<a name="Image+connected"></a>

### image.connected()
Callback function of MREntity - handles setting up this Image and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>Image</code>](#Image)  
<a name="Image+updateStyle"></a>

### image.updateStyle()
Updates the style for the Image's border and background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>Image</code>](#Image)  
<a name="Image+mutated"></a>

### image.mutated(mutation)
Callback function of MREntity - Updates the image's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>Image</code>](#Image)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="Image+computeObjectFitDimensions"></a>

### image.computeObjectFitDimensions()
computes the width and height values considering the value of object-fit

**Kind**: instance method of [<code>Image</code>](#Image)  
<a name="Image+cover"></a>

### image.cover(texture, aspect)
Calculates the texture UV transformation change based on the image's aspect ratio.

**Kind**: instance method of [<code>Image</code>](#Image)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>object</code> | the texture to augment |
| aspect | <code>number</code> | a given expected aspect ratio |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/Image.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/Image.js</a></div>


## Classes

<dl>
<dt><a href="#A">A</a> ⇐ <code>MRTextEntity</code></dt>
<dd><p>3D representation of a hyperlink. <code>mr-a</code></p>
</dd>
</dl>

## Functions

<dl>
<dt><a href="#connected">connected()</a></dt>
<dd></dd>
</dl>

<a name="A"></a>

## A ⇐ <code>MRTextEntity</code>
3D representation of a hyperlink. `mr-a`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  
<a name="connected"></a>

## connected()
**Kind**: global function  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRHyperlink.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRHyperlink.js</a></div>


<a name="MRPlane"></a>

## MRPlane
a name space representation of an MR Plane

**Kind**: global class  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/datatypes/MRPlane.js' target='_blank'>Suggest an edit on GitHub for src/datatypes/MRPlane.js</a></div>


## Members

<dl>
<dt><a href="#viewPortHeight">viewPortHeight</a> : <code>number</code></dt>
<dd><p>the noted viewport height</p>
</dd>
<dt><a href="#viewPortWidth">viewPortWidth</a> : <code>number</code></dt>
<dd><p>the noted viewport width</p>
</dd>
<dt><a href="#XRScale">XRScale</a> : <code>number</code></dt>
<dd><p>UI needs to be scaled down in XR, 1:1 scale is huuuuge</p>
</dd>
</dl>

<a name="viewPortHeight"></a>

## viewPortHeight : <code>number</code>
the noted viewport height

**Kind**: global variable  
<a name="viewPortWidth"></a>

## viewPortWidth : <code>number</code>
the noted viewport width

**Kind**: global variable  
<a name="XRScale"></a>

## XRScale : <code>number</code>
UI needs to be scaled down in XR, 1:1 scale is huuuuge

**Kind**: global variable  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/global.js' target='_blank'>Suggest an edit on GitHub for src/global.js</a></div>


<a name="xr"></a>

## xr : <code>object</code>
Useful namespace for helping with xr utility functions.
this is set within the MRApp to access various WebXR API features

**Kind**: global namespace  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/XR.js' target='_blank'>Suggest an edit on GitHub for src/utils/XR.js</a></div>


<a name="Material"></a>

## Material : <code>object</code>
Useful namespace for helping with Materials and threejs utility functions

**Kind**: global namespace  

* [Material](#Material) : <code>object</code>
    * [.getObjectMaterial(parent)](#Material.getObjectMaterial) ⇒ <code>object</code>
    * [.setObjectMaterial(parent, material)](#Material.setObjectMaterial) ⇒ <code>object</code>

<a name="Material.getObjectMaterial"></a>

### Material.getObjectMaterial(parent) ⇒ <code>object</code>
Given the parent, grabs either the parent's direct material or (in the case of a group) the
material of the first child hit.

**Kind**: static method of [<code>Material</code>](#Material)  
**Returns**: <code>object</code> - material - the grabbed material  

| Param | Type | Description |
| --- | --- | --- |
| parent | <code>object</code> | either a THREE.Group or a THREE.mesh/object |

<a name="Material.setObjectMaterial"></a>

### Material.setObjectMaterial(parent, material) ⇒ <code>object</code>
Given the parent, grabs either the parents direct material or (in the case of a group) the
material of the first child hit.

**Kind**: static method of [<code>Material</code>](#Material)  
**Returns**: <code>object</code> - parent - the updated parent object  

| Param | Type | Description |
| --- | --- | --- |
| parent | <code>object</code> | either a THREE.Group or a THREE.mesh/object |
| material | <code>object</code> | a threejs material to be set for either the parent's direct material or (in the case of a group) the material of all children within the parent group. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Material.js' target='_blank'>Suggest an edit on GitHub for src/utils/Material.js</a></div>


<a name="MathUtils"></a>

## MathUtils : <code>object</code>
Useful namespace for helping with Math utility functions

**Kind**: global namespace  

* [MathUtils](#MathUtils) : <code>object</code>
    * [.roundTo(val, decimal)](#MathUtils.roundTo) ⇒ <code>number</code>
    * [.roundVectorTo(vector, decimal)](#MathUtils.roundVectorTo)
    * [.radToDeg(val)](#MathUtils.radToDeg) ⇒ <code>number</code>

<a name="MathUtils.roundTo"></a>

### MathUtils.roundTo(val, decimal) ⇒ <code>number</code>
Rounds the inputted val to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  
**Returns**: <code>number</code> - - The rounded number to the requested decimal amount.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(832.456, 10) = 832.4; roundTo(832.456, 1000) = 832.456; roundTo(832.456, 0.01) = 800;
```
<a name="MathUtils.roundVectorTo"></a>

### MathUtils.roundVectorTo(vector, decimal)
Rounds the inputted vector to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  

| Param | Type | Description |
| --- | --- | --- |
| vector | <code>vector</code> | The vector of numbers to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(<832.456, 92.10003, 23452.1>, 10) = <832.4, 92.1, 2342.1>;
```
<a name="MathUtils.radToDeg"></a>

### MathUtils.radToDeg(val) ⇒ <code>number</code>
Performs the radian To Degree calculation commonly used in math.
https://en.wikipedia.org/wiki/Degree_(angle) https://en.wikipedia.org/wiki/Radian

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  
**Returns**: <code>number</code> - - the calculated degree representation of val.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be converted from radians to degrees |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/MathUtils.js' target='_blank'>Suggest an edit on GitHub for src/utils/MathUtils.js</a></div>


<a name="Physics"></a>

## Physics : <code>object</code>
Useful namespace for helping with Physics utility functions

**Kind**: global namespace  

* [Physics](#Physics) : <code>object</code>
    * [.CollisionGroups](#Physics.CollisionGroups)
    * [.RAPIER](#Physics.RAPIER)
    * [.INPUT_COLLIDER_HANDLE_NAMES](#Physics.INPUT_COLLIDER_HANDLE_NAMES)
    * [.COLLIDER_ENTITY_MAP](#Physics.COLLIDER_ENTITY_MAP)

<a name="Physics.CollisionGroups"></a>

### Physics.CollisionGroups
the Rapier collision groups used throughout mr.js

**Kind**: static property of [<code>Physics</code>](#Physics)  
<a name="Physics.RAPIER"></a>

### Physics.RAPIER
the RAPIER physics controller object

**Kind**: static property of [<code>Physics</code>](#Physics)  
<a name="Physics.INPUT_COLLIDER_HANDLE_NAMES"></a>

### Physics.INPUT\_COLLIDER\_HANDLE\_NAMES
the Rapier INPUT_COLLIDER_HANDLE_NAMES

**Kind**: static property of [<code>Physics</code>](#Physics)  
<a name="Physics.COLLIDER_ENTITY_MAP"></a>

### Physics.COLLIDER\_ENTITY\_MAP
the Rapier COLLIDER_ENTITY_MAP

**Kind**: static property of [<code>Physics</code>](#Physics)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Physics.js' target='_blank'>Suggest an edit on GitHub for src/utils/Physics.js</a></div>


<a name="Geometry"></a>

## Geometry : <code>object</code>
Useful namespace for helping with Geometry utility functions

**Kind**: global namespace  
<a name="Geometry.UIPlane"></a>

### Geometry.UIPlane(width, height, radius_corner, smoothness) ⇒ <code>THREE.BufferGeometry</code>
This construction function creates the UIPlane that is used as the backdrop for most mrjs Panel divs.

**Kind**: static method of [<code>Geometry</code>](#Geometry)  
**Returns**: <code>THREE.BufferGeometry</code> - - The completed threejs plane object.  

| Param | Type | Description |
| --- | --- | --- |
| width | <code>number</code> | the expected width of the plane. |
| height | <code>number</code> | the expected height of the plane. |
| radius_corner | <code>number</code> | the expected radius value to curve the planes corners. |
| smoothness | <code>number</code> | the expected smoothness value. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Geometry.js' target='_blank'>Suggest an edit on GitHub for src/utils/Geometry.js</a></div>

