---
title: MRSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRSystem.js
---
# MRSystem

<a name="MRSystem"></a>

## MRSystem
The default representation of an MRSystem to be expanded upon by actual details ECS System items.

**Kind**: global class  

* [MRSystem](#MRSystem)
    * [.MRSystem](#MRSystem+MRSystem)
        * [new exports.MRSystem(useComponents, frameRate)](#new_MRSystem+MRSystem_new)
    * [.onRegister(app)](#MRSystem+onRegister)
    * [.onUnregister(app)](#MRSystem+onUnregister)
    * [._update(deltaTime, frame)](#MRSystem+_update)
    * [.update(deltaTime, frame)](#MRSystem+update)
    * [.eventUpdate()](#MRSystem+eventUpdate)
    * [._onNewEntity(entity)](#MRSystem+_onNewEntity)
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

<a name="MRSystem+onRegister"></a>

### mrSystem.onRegister(app)
Called when a new entity is added to the scene

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| app | <code>object</code> | the app the system is registered to. |

<a name="MRSystem+onUnregister"></a>

### mrSystem.onUnregister(app)
Called when the system is registered to an app is added.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| app | <code>object</code> | the app the system is registered to. |

<a name="MRSystem+_update"></a>

### mrSystem.\_update(deltaTime, frame)
The actual system update call.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+update"></a>

### mrSystem.update(deltaTime, frame)
The generic system update call per render-frame.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+eventUpdate"></a>

### mrSystem.eventUpdate()
An event triggered update, called when any global scene level events occur.
See GLOBAL_UPDATE_EVENTS of MRSystem.js

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
<a name="MRSystem+_onNewEntity"></a>

### mrSystem.\_onNewEntity(entity)
internal function, called when a new entity is added to the scene

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="MRSystem+onNewEntity"></a>

### mrSystem.onNewEntity(entity)
Called when a new entity is added to the scene

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="MRSystem+attachedComponent"></a>

### mrSystem.attachedComponent(entity)
(async) Called when the entity component is initialized

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
(async) Handles the component and registry aspect of the event when an entity component attaches to this system.

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

