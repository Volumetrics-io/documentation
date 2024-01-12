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


<a name="MRApp"></a>

## MRApp ⇐ <code>MRElement</code>
The engine handler for running MRjs as an App. `mr-app`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MRApp](#MRApp) ⇐ <code>MRElement</code>
    * _instance_
        * [.MRApp](#MRApp+MRApp)
            * [new exports.MRApp()](#new_MRApp+MRApp_new)
        * [.mutatedAttribute(mutation)](#MRApp+mutatedAttribute)
        * [.mutatedChildList(mutation)](#MRApp+mutatedChildList)
        * [.mutationCallback(mutationList, observer)](#MRApp+mutationCallback)
        * [.init()](#MRApp+init)
        * [.initUser()](#MRApp+initUser)
        * [.initLights(data)](#MRApp+initLights)
        * [.denit()](#MRApp+denit)
        * [.registerSystem(system)](#MRApp+registerSystem)
        * [.unregisterSystem(system)](#MRApp+unregisterSystem)
        * [.add(entity)](#MRApp+add)
        * [.remove(entity)](#MRApp+remove)
        * [.onWindowResize()](#MRApp+onWindowResize)
        * [.render(timeStamp, frame)](#MRApp+render)
    * _static_
        * [.Connected()](#MRApp.Connected)
        * [.Disconnected()](#MRApp.Disconnected)

<a name="MRApp+MRApp"></a>

### mrApp.MRApp
**Kind**: instance class of [<code>MRApp</code>](#MRApp)  
<a name="new_MRApp+MRApp_new"></a>

#### new exports.MRApp()
Constructs the base information of the app including system, camera, engine, xr, and rendering defaults.

<a name="MRApp+mutatedAttribute"></a>

### mrApp.mutatedAttribute(mutation)
**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | TODO |

<a name="MRApp+mutatedChildList"></a>

### mrApp.mutatedChildList(mutation)
**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | TODO |

<a name="MRApp+mutationCallback"></a>

### mrApp.mutationCallback(mutationList, observer)
The mutationCallback function that runs whenever this entity component should be mutated.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| mutationList | <code>object</code> | the list of update/change/mutation(s) to be handled. |
| observer | <code>object</code> | w3 standard object that watches for changes on the HTMLElement |

<a name="MRApp+init"></a>

### mrApp.init()
Initializes the engine state for the MRApp. This function is run whenever the MRApp is connected.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+initUser"></a>

### mrApp.initUser()
Initializes the user information for the MRApp including appropriate HMD direction and camera information and the default scene anchor location.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+initLights"></a>

### mrApp.initLights(data)
Initializes default lighting and shadows for the main scene.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| data | <code>object</code> | the lights data (color, intensity, shadows, etc) |

<a name="MRApp+denit"></a>

### mrApp.denit()
De-initializes rendering and MR

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+registerSystem"></a>

### mrApp.registerSystem(system)
Registers a new system addition to the MRApp engine.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| system | <code>MRSystem</code> | the system to be added. |

<a name="MRApp+unregisterSystem"></a>

### mrApp.unregisterSystem(system)
Unregisters a system from the MRApp engine.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| system | <code>MRSystem</code> | the system to be removed. |

<a name="MRApp+add"></a>

### mrApp.add(entity)
Adding an entity as an object in this MRApp engine's scene.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRApp+remove"></a>

### mrApp.remove(entity)
Removing an entity as an object in this MRApp engine's scene.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="MRApp+onWindowResize"></a>

### mrApp.onWindowResize()
Handles what is necessary rendering, camera, and user-wise when the viewing window is resized.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+render"></a>

### mrApp.render(timeStamp, frame)
Default function header needed by threejs. The render function that is called during ever frame. Calls every systems' update function.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| timeStamp | <code>number</code> | timeStamp of the current frame. |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRApp.Connected"></a>

### MRApp.Connected()
The connectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: static method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp.Disconnected"></a>

### MRApp.Disconnected()
The disconnectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: static method of [<code>MRApp</code>](#MRApp)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRApp.js' target='_blank'>Suggest an edit on GitHub for src/core/MRApp.js</a></div>


<a name="SurfaceSystem"></a>

## SurfaceSystem ⇐ <code>MRSystem</code>
Handles all items (3D and 2D) associated with an mr-surface including the surface itself.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [SurfaceSystem](#SurfaceSystem) ⇐ <code>MRSystem</code>
    * [.SurfaceSystem](#SurfaceSystem+SurfaceSystem)
        * [new exports.SurfaceSystem()](#new_SurfaceSystem+SurfaceSystem_new)
    * [.update(deltaTime, frame)](#SurfaceSystem+update)
    * [.resetAllSurfaces()](#SurfaceSystem+resetAllSurfaces)
    * [.lockWindow()](#SurfaceSystem+lockWindow)
    * [.placeSurface(hitResults, frame)](#SurfaceSystem+placeSurface)

<a name="SurfaceSystem+SurfaceSystem"></a>

### surfaceSystem.SurfaceSystem
**Kind**: instance class of [<code>SurfaceSystem</code>](#SurfaceSystem)  
<a name="new_SurfaceSystem+SurfaceSystem_new"></a>

#### new exports.SurfaceSystem()
SurfaceSystem's default constructor including setting up /...? TODO - i need to understand what an mr-surface is first

<a name="SurfaceSystem+update"></a>

### surfaceSystem.update(deltaTime, frame)
The generic system update call. // TODO - add better description here

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="SurfaceSystem+resetAllSurfaces"></a>

### surfaceSystem.resetAllSurfaces()
Detaches all surfaces in this system and resets them

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  
<a name="SurfaceSystem+lockWindow"></a>

### surfaceSystem.lockWindow()
Locks the window in place where it has been positioned after being moved.

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  
<a name="SurfaceSystem+placeSurface"></a>

### surfaceSystem.placeSurface(hitResults, frame)
Places the surface based on the user's current pose position??? TODO

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  

| Param | Type | Description |
| --- | --- | --- |
| hitResults | <code>object</code> | TODO |
| frame | <code>object</code> | TODO |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/SurfaceSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/SurfaceSystem.js</a></div>


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


<a name="MREntity"></a>

## MREntity ⇐ <code>MRElement</code>
The default representation of an MRElement to be expanded upon by actual details ECS Entity items. `mr-entity`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MREntity](#MREntity) ⇐ <code>MRElement</code>
    * [.MREntity](#MREntity+MREntity)
        * [new exports.MREntity()](#new_MREntity+MREntity_new)
    * [.width()](#MREntity+width) ⇒ <code>number</code>
    * [.contentWidth()](#MREntity+contentWidth) ⇒ <code>number</code>
    * [.height()](#MREntity+height) ⇒ <code>number</code>
    * [.contentHeight()](#MREntity+contentHeight) ⇒ <code>number</code>
    * [.updatePhysicsData()](#MREntity+updatePhysicsData)
    * [.onHover(event)](#MREntity+onHover)
    * [.onTouch(event)](#MREntity+onTouch)
    * [.onScroll(event)](#MREntity+onScroll)
    * [.connectedCallback()](#MREntity+connectedCallback)
    * [.loadAttributes()](#MREntity+loadAttributes)
    * [.connected()](#MREntity+connected)
    * [.disconnected()](#MREntity+disconnected)
    * [.disconnectedCallback()](#MREntity+disconnectedCallback)
    * [.mutated(mutation)](#MREntity+mutated)
    * [.mutationCallback(mutationList, observer)](#MREntity+mutationCallback)
    * [.componentMutated(mutation)](#MREntity+componentMutated)
    * [.add(entity)](#MREntity+add)
    * [.remove(entity)](#MREntity+remove)
    * [.traverse(callBack)](#MREntity+traverse)

<a name="MREntity+MREntity"></a>

### mrEntity.MREntity
**Kind**: instance class of [<code>MREntity</code>](#MREntity)  
<a name="new_MREntity+MREntity_new"></a>

#### new exports.MREntity()
Constructor for the default Entity Component (MREntity).
             Sets up the base object3D and useful Mixed Reality information including rendering, touching, and component basics.

<a name="MREntity+width"></a>

### mrEntity.width() ⇒ <code>number</code>
Calculates the width of the Entity based on the viewPort's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MREntity+contentWidth"></a>

### mrEntity.contentWidth() ⇒ <code>number</code>
The actual 3D value of the content's width.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - width of the 3D object.  
<a name="MREntity+height"></a>

### mrEntity.height() ⇒ <code>number</code>
Calculates the height of the Entity based on the viewPort's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MREntity+contentHeight"></a>

### mrEntity.contentHeight() ⇒ <code>number</code>
The actual 3D value of the content's height.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - height of the 3D object.  
<a name="MREntity+updatePhysicsData"></a>

### mrEntity.updatePhysicsData()
Default base for updating the physics data for the current iteration.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+onHover"></a>

### mrEntity.onHover(event)
Handles the hover event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the hover event |

<a name="MREntity+onTouch"></a>

### mrEntity.onTouch(event)
Handles the touch event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="MREntity+onScroll"></a>

### mrEntity.onScroll(event)
Handles the scroll event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |

<a name="MREntity+connectedCallback"></a>

### mrEntity.connectedCallback()
The connectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+loadAttributes"></a>

### mrEntity.loadAttributes()
Loads all attributes of this entity's stored dataset including components, attaching them, and their associated rotations and positions.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+connected"></a>

### mrEntity.connected()
Callback function of MREntity - does nothing. Is called by the connectedCallback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+disconnected"></a>

### mrEntity.disconnected()
Callback function of MREntity - does nothing. Is called by the disconnectedCallback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+disconnectedCallback"></a>

### mrEntity.disconnectedCallback()
The disconnectedCallback function that runs whenever this entity component becomes disconnected from something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+mutated"></a>

### mrEntity.mutated(mutation)
Callback function of MREntity - does nothing. Is called by mutation Callback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MREntity+mutationCallback"></a>

### mrEntity.mutationCallback(mutationList, observer)
The mutationCallback function that runs whenever this entity component should be mutated.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutationList | <code>object</code> | the list of update/change/mutation(s) to be handled. |
| observer | <code>object</code> | w3 standard object that watches for changes on the HTMLElement |

<a name="MREntity+componentMutated"></a>

### mrEntity.componentMutated(mutation)
Helper function for the mutationCallback. Handles actually updating this entity component with all the associated dispatchEvents.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MREntity+add"></a>

### mrEntity.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | [<code>MREntity</code>](#MREntity) | the entity to be added. |

<a name="MREntity+remove"></a>

### mrEntity.remove(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | [<code>MREntity</code>](#MREntity) | the entity to be removed. |

<a name="MREntity+traverse"></a>

### mrEntity.traverse(callBack)
Runs the passed through function on this object and every child of this object.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| callBack | <code>function</code> | the function to run recursively. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MREntity.js' target='_blank'>Suggest an edit on GitHub for src/core/MREntity.js</a></div>


<a name="TextArea"></a>

## TextArea ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal paragraph user-entry text field items one would expect in a web-browser. `mr-textarea`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [TextArea](#TextArea) ⇐ <code>MRTextEntity</code>
    * [.TextArea](#TextArea+TextArea)
        * [new exports.TextArea()](#new_TextArea+TextArea_new)
    * [.connected()](#TextArea+connected)
    * [.blur()](#TextArea+blur)
    * [.focus()](#TextArea+focus)
    * [.updateCursorPosition()](#TextArea+updateCursorPosition)

<a name="TextArea+TextArea"></a>

### textArea.TextArea
**Kind**: instance class of [<code>TextArea</code>](#TextArea)  
<a name="new_TextArea+TextArea_new"></a>

#### new exports.TextArea()
Constructor for the textArea entity component.

<a name="TextArea+connected"></a>

### textArea.connected()
Callback function of MREntity - handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
<a name="TextArea+blur"></a>

### textArea.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
<a name="TextArea+focus"></a>

### textArea.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
<a name="TextArea+updateCursorPosition"></a>

### textArea.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/TextArea.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/TextArea.js</a></div>


<a name="Light"></a>

## Light ⇐ <code>MREntity</code>
Represents lights in 3D space. `mr-light`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [Light](#Light) ⇐ <code>MREntity</code>
    * [.Light](#Light+Light)
        * [new exports.Light()](#new_Light+Light_new)
    * [.connected()](#Light+connected)
    * [.mutated(mutation)](#Light+mutated)

<a name="Light+Light"></a>

### light.Light
**Kind**: instance class of [<code>Light</code>](#Light)  
<a name="new_Light+Light_new"></a>

#### new exports.Light()
Constructs the base 3D object.

<a name="Light+connected"></a>

### light.connected()
Callback function of MREntity - handles setting up this Light once it is connected to run as an entity component.

**Kind**: instance method of [<code>Light</code>](#Light)  
<a name="Light+mutated"></a>

### light.mutated(mutation)
Callback function of MREntity - Updates the lights color and intensity as requested.

**Kind**: instance method of [<code>Light</code>](#Light)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/Light.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/Light.js</a></div>


<a name="TextField"></a>

## TextField ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal user-entry text field items one would expect in a web-browser. Limits the one-line. `mr-textfield`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [TextField](#TextField) ⇐ <code>MRTextEntity</code>
    * [.TextField](#TextField+TextField)
        * [new exports.TextField()](#new_TextField+TextField_new)
    * [.connected()](#TextField+connected)
    * [.blur()](#TextField+blur)
    * [.focus()](#TextField+focus)
    * [.updateCursorPosition()](#TextField+updateCursorPosition)

<a name="TextField+TextField"></a>

### textField.TextField
**Kind**: instance class of [<code>TextField</code>](#TextField)  
<a name="new_TextField+TextField_new"></a>

#### new exports.TextField()
Constructor for the textField entity component.

<a name="TextField+connected"></a>

### textField.connected()
Callback function of MREntity - handles setting up this textfield once it is connected to run as an entity component.

**Kind**: instance method of [<code>TextField</code>](#TextField)  
<a name="TextField+blur"></a>

### textField.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>TextField</code>](#TextField)  
<a name="TextField+focus"></a>

### textField.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>TextField</code>](#TextField)  
<a name="TextField+updateCursorPosition"></a>

### textField.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>TextField</code>](#TextField)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/TextField.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/TextField.js</a></div>


<a name="Surface"></a>

## Surface ⇐ <code>MREntity</code>
...TODO... how is this different than Panel in terms of use? i understand panel has more too it, but is this just a sprite? `mr-surface`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [Surface](#Surface) ⇐ <code>MREntity</code>
    * [.Surface](#Surface+Surface)
    * [.height()](#Surface+height) ⇒ <code>number</code>
    * [.width()](#Surface+width) ⇒ <code>number</code>
    * [.connected()](#Surface+connected)
    * [.add(entity)](#Surface+add)
    * [.remove(entity)](#Surface+remove)
    * [.mutated(mutation)](#Surface+mutated)
    * [.place()](#Surface+place)
    * [.replace()](#Surface+replace)
    * [.detach()](#Surface+detach)

<a name="Surface+Surface"></a>

### surface.Surface
**Kind**: instance class of [<code>Surface</code>](#Surface)  
<a name="Surface+height"></a>

### surface.height() ⇒ <code>number</code>
**Kind**: instance method of [<code>Surface</code>](#Surface)  
**Returns**: <code>number</code> - - the height of the current viewport  
<a name="Surface+width"></a>

### surface.width() ⇒ <code>number</code>
**Kind**: instance method of [<code>Surface</code>](#Surface)  
**Returns**: <code>number</code> - - the width of the current viewport  
<a name="Surface+connected"></a>

### surface.connected()
Callback function of MREntity - handles setting up this Surface once it is connected to run as an entity component.

**Kind**: instance method of [<code>Surface</code>](#Surface)  
<a name="Surface+add"></a>

### surface.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Surface</code>](#Surface)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="Surface+remove"></a>

### surface.remove(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Surface</code>](#Surface)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="Surface+mutated"></a>

### surface.mutated(mutation)
Callback function of MREntity - updates based on the changed attribute: orientation

**Kind**: instance method of [<code>Surface</code>](#Surface)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="Surface+place"></a>

### surface.place()
Puts the surface into the scene and dispatches an event to confirm placement.

**Kind**: instance method of [<code>Surface</code>](#Surface)  
<a name="Surface+replace"></a>

### surface.replace()
Replaces /...? TODO

**Kind**: instance method of [<code>Surface</code>](#Surface)  
<a name="Surface+detach"></a>

### surface.detach()
Handles when a surface should detach from /...? TODO

**Kind**: instance method of [<code>Surface</code>](#Surface)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/Surface.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/Surface.js</a></div>


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


<a name="ClippingGeometry"></a>

## ClippingGeometry
Geometry used in the clipping plane step. Separated out for clarity in the calculations.

**Kind**: global class  

* [ClippingGeometry](#ClippingGeometry)
    * [.ClippingGeometry](#ClippingGeometry+ClippingGeometry)
        * [new exports.ClippingGeometry(geometry)](#new_ClippingGeometry+ClippingGeometry_new)

<a name="ClippingGeometry+ClippingGeometry"></a>

### clippingGeometry.ClippingGeometry
**Kind**: instance class of [<code>ClippingGeometry</code>](#ClippingGeometry)  
<a name="new_ClippingGeometry+ClippingGeometry_new"></a>

#### new exports.ClippingGeometry(geometry)
Constructor for the clipping geometry class. Sets the internal geometry object to the geometry that is passed through.


| Param | Type | Description |
| --- | --- | --- |
| geometry | <code>object</code> | The geometry to be captured internally by `this.geometry`. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/datatypes/ClippingGeometry.js' target='_blank'>Suggest an edit on GitHub for src/datatypes/ClippingGeometry.js</a></div>


<a name="StringUtils"></a>

## StringUtils : <code>object</code>
Useful namespace for helping with String utility functions

**Kind**: global namespace  

* [StringUtils](#StringUtils) : <code>object</code>
    * [.stringToJson(attrString)](#StringUtils.stringToJson) ⇒ <code>object</code>
    * [.jsonToString(componentData)](#StringUtils.jsonToString) ⇒ <code>string</code>
    * [.stringToVector(str)](#StringUtils.stringToVector) ⇒ <code>object</code>
    * [.stringToDegVector(str)](#StringUtils.stringToDegVector) ⇒ <code>object</code>
    * [.stringToDimensionValue(val)](#StringUtils.stringToDimensionValue) ⇒ <code>number</code>

<a name="StringUtils.stringToJson"></a>

### StringUtils.stringToJson(attrString) ⇒ <code>object</code>
Converts and formats the inputted string to a json object.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - object in json form  

| Param | Type | Description |
| --- | --- | --- |
| attrString | <code>string</code> | the string to be formatted |

<a name="StringUtils.jsonToString"></a>

### StringUtils.jsonToString(componentData) ⇒ <code>string</code>
Converts and formats the inputted json object into a string.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>string</code> - - the string representation of the json object  

| Param | Type | Description |
| --- | --- | --- |
| componentData | <code>object</code> | the json object to be formatted into a string |

<a name="StringUtils.stringToVector"></a>

### StringUtils.stringToVector(str) ⇒ <code>object</code>
Converts a string to vector format.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | <code>string</code> | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="StringUtils.stringToDegVector"></a>

### StringUtils.stringToDegVector(str) ⇒ <code>object</code>
Converts a string to vector format where the numbers are pre-converted from radians to degrees.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | <code>string</code> | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="StringUtils.stringToDimensionValue"></a>

### StringUtils.stringToDimensionValue(val) ⇒ <code>number</code>
Converts a string to vector format where the numbers are pre-converted from a number to an appropriate representation

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>number</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>string</code> | the string to be converted to a vector. Must be of format 'x%' or 'x/y'. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/StringUtils.js' target='_blank'>Suggest an edit on GitHub for src/utils/StringUtils.js</a></div>


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
    * [.RAPIER](#Physics.RAPIER)
    * [.INPUT_COLLIDER_HANDLE_NAMES](#Physics.INPUT_COLLIDER_HANDLE_NAMES)
    * [.COLLIDER_ENTITY_MAP](#Physics.COLLIDER_ENTITY_MAP)

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

