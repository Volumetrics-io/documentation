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
    * [.alwaysNeedsSystemUpdate()](#MRSystem+alwaysNeedsSystemUpdate) ⇒ <code>boolean</code>
    * [.alwaysNeedsSystemUpdate()](#MRSystem+alwaysNeedsSystemUpdate)
    * [.needsSystemUpdate()](#MRSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#MRSystem+needsSystemUpdate)
    * [._update(deltaTime, frame)](#MRSystem+_update)
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

<a name="MRSystem+alwaysNeedsSystemUpdate"></a>

### mrSystem.alwaysNeedsSystemUpdate() ⇒ <code>boolean</code>
Checks if the system is setup to always run instead of being in a state that allows for toggling on and off.
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
**Returns**: <code>boolean</code> - true if the internal _needsSystemUpdate is set to 'undefined', false otherwise.  
<a name="MRSystem+alwaysNeedsSystemUpdate"></a>

### mrSystem.alwaysNeedsSystemUpdate()
Sets the system ito always run (true) or to be in a state that allows for toggling on and off (false).
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
<a name="MRSystem+needsSystemUpdate"></a>

### mrSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run the generic system update call. Default implementation returns true if the needsSystemUpdate flag
has been set to true or is in the alwaysNeedsSystemUpdate state. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MRSystem+needsSystemUpdate"></a>

### mrSystem.needsSystemUpdate()
Set the needsSystemUpdate parameter.
undefined - means the system will always update every time the application loops.
true/false - means the system will only run one iteration when set to true and then reset back to false waiting for the next trigger.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
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

