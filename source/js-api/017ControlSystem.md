---
title: ControlSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/ControlSystem.js
---
# ControlSystem

<a name="ControlSystem"></a>

## ControlSystem ⇐ <code>MRSystem</code>
This system supports interaction event information including mouse and controller interfacing.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ControlSystem](#ControlSystem) ⇐ <code>MRSystem</code>
    * [.ControlSystem](#ControlSystem+ControlSystem)
        * [new exports.ControlSystem()](#new_ControlSystem+ControlSystem_new)
    * [.update(deltaTime, frame)](#ControlSystem+update)
    * [.checkCollisions(hand)](#ControlSystem+checkCollisions)
    * [.onContactStart(handle1, handle2)](#ControlSystem+onContactStart)
    * [.onContactEnd(handle1, handle2)](#ControlSystem+onContactEnd)
    * [.touchStart(collider1, collider2, entity)](#ControlSystem+touchStart)
    * [.touchEnd(entity)](#ControlSystem+touchEnd)
    * [.hoverStart(collider1, collider2, entity)](#ControlSystem+hoverStart)
    * [.hoverEnd(entity)](#ControlSystem+hoverEnd)
    * [.pointerRay()](#ControlSystem+pointerRay)
    * [.mouseOver(event)](#ControlSystem+mouseOver)
    * [.onMouseDown(event)](#ControlSystem+onMouseDown)
    * [.onMouseUp(event)](#ControlSystem+onMouseUp)
    * [.interact(entity)](#ControlSystem+interact)
    * [.pixelRayCast(event)](#ControlSystem+pixelRayCast) ⇒ <code>object</code>

<a name="ControlSystem+ControlSystem"></a>

### controlSystem.ControlSystem
**Kind**: instance class of [<code>ControlSystem</code>](#ControlSystem)  
<a name="new_ControlSystem+ControlSystem_new"></a>

#### new exports.ControlSystem()
ControlSystem's Default constructor that sets up the app's mouse information along with any relevant physics and cursor information.

<a name="ControlSystem+update"></a>

### controlSystem.update(deltaTime, frame)
The generic system update call. Updates the meshes and states for both the left and right hand visuals.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ControlSystem+checkCollisions"></a>

### controlSystem.checkCollisions(hand)
Check for any collisions with this MRHand and the rapier physics world.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| hand | <code>object</code> | the MRHand object whose collisions we are checking with this function. |

<a name="ControlSystem+onContactStart"></a>

### controlSystem.onContactStart(handle1, handle2)
Handles the start of collisions between two different colliders.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| handle1 | <code>number</code> | the first collider |
| handle2 | <code>number</code> | the second collider |

<a name="ControlSystem+onContactEnd"></a>

### controlSystem.onContactEnd(handle1, handle2)
Handles the end of collisions between two different colliders.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| handle1 | <code>number</code> | the first collider |
| handle2 | <code>number</code> | the second collider |

<a name="ControlSystem+touchStart"></a>

### controlSystem.touchStart(collider1, collider2, entity)
Handles the start of touch between two different colliders and the current entity.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| collider1 | <code>number</code> | the first collider |
| collider2 | <code>number</code> | the second collider |
| entity | <code>object</code> | the current entity |

<a name="ControlSystem+touchEnd"></a>

### controlSystem.touchEnd(entity)
Handles the end of touch for the current entity

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the current entity |

<a name="ControlSystem+hoverStart"></a>

### controlSystem.hoverStart(collider1, collider2, entity)
Handles the start of hovering over/around a specific entity.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| collider1 | <code>number</code> | the first collider |
| collider2 | <code>number</code> | the second collider |
| entity | <code>object</code> | the current entity |

<a name="ControlSystem+hoverEnd"></a>

### controlSystem.hoverEnd(entity)
Handles the end of hovering over/around a specific entity.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the current entity |

<a name="ControlSystem+pointerRay"></a>

### controlSystem.pointerRay()
Fills in the this.origin,direction,ray, and hit values based on the rapier world

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
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

<a name="ControlSystem+interact"></a>

### controlSystem.interact(entity)
Checks what kind of interactions should happen based on the current entity and any events that
have happened so far.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | checking if there is any interaction required based on current events and this entity. |

<a name="ControlSystem+pixelRayCast"></a>

### controlSystem.pixelRayCast(event) ⇒ <code>object</code>
Raycast into the scene using the information from the event that called it.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
**Returns**: <code>object</code> - - collision item for what the ray hit in the 3d scene.  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the event being handled |

