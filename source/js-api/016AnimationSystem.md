---
title: AnimationSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/AnimationSystem.js
---
# AnimationSystem

<a name="AnimationSystem"></a>

## AnimationSystem ⇐ <code>MRSystem</code>
Handles specific needs for setting up the masking for all necessary items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AnimationSystem](#AnimationSystem) ⇐ <code>MRSystem</code>
    * [.AnimationSystem](#AnimationSystem+AnimationSystem)
        * [new exports.AnimationSystem()](#new_AnimationSystem+AnimationSystem_new)
    * [.update(deltaTime, frame)](#AnimationSystem+update)
    * [.attachedComponent(entity)](#AnimationSystem+attachedComponent)
    * [.updatedComponent(entity)](#AnimationSystem+updatedComponent)
    * [.detachedComponent(entity)](#AnimationSystem+detachedComponent)
    * [.onNewEntity(entity)](#AnimationSystem+onNewEntity)
    * [.setAnimation(entity, comp)](#AnimationSystem+setAnimation)

<a name="AnimationSystem+AnimationSystem"></a>

### animationSystem.AnimationSystem
**Kind**: instance class of [<code>AnimationSystem</code>](#AnimationSystem)  
<a name="new_AnimationSystem+AnimationSystem_new"></a>

#### new exports.AnimationSystem()
AnimationSystem's default constructor.

<a name="AnimationSystem+update"></a>

### animationSystem.update(deltaTime, frame)
Updates each animation mixer in the registry. This function should be called
     within the main animation loop of the application. It iterates through all the
     animation mixers stored in the registry and updates them with the given deltaTime.
     The deltaTime parameter is typically the time elapsed since the last frame
     which is used to ensure smooth animation playback.

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | The time elapsed since the last update call, used to update the animation mixers. |
| frame | <code>object</code> | Additional frame information, not used in the current implementation but can be utilized for future enhancements. |

<a name="AnimationSystem+attachedComponent"></a>

### animationSystem.attachedComponent(entity)
Called when the entity component is initialized

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being attached/initialized. |

<a name="AnimationSystem+updatedComponent"></a>

### animationSystem.updatedComponent(entity)
Called when the entity component is updated

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component. |

<a name="AnimationSystem+detachedComponent"></a>

### animationSystem.detachedComponent(entity)
Called when the entity component is detached

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component being detached. |

<a name="AnimationSystem+onNewEntity"></a>

### animationSystem.onNewEntity(entity)
When the system swaps to a new entity, this handles setting up the animations for the system runs.

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | given entity that might be handled by the system. |

<a name="AnimationSystem+setAnimation"></a>

### animationSystem.setAnimation(entity, comp)
Sets the Animation of the entity object based on the component value associated with it.

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component being detached. |
| comp | <code>object</code> | component that contains a string value of 'play', 'pause', 'stop' |

