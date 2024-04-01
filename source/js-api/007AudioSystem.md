---
title: AudioSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/AudioSystem.js
---
# AudioSystem

<a name="AudioSystem"></a>

## AudioSystem ⇐ <code>MRSystem</code>
This system manages spatial audio in the THREE.js scene.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AudioSystem](#AudioSystem) ⇐ <code>MRSystem</code>
    * [.AudioSystem](#AudioSystem+AudioSystem)
        * [new exports.AudioSystem()](#new_AudioSystem+AudioSystem_new)
    * [.update(deltaTime, frame)](#AudioSystem+update)
    * [.attachedComponent(entity)](#AudioSystem+attachedComponent)
    * [.updatedComponent(entity)](#AudioSystem+updatedComponent)
    * [.detachedComponent(entity)](#AudioSystem+detachedComponent)
    * [.setAudioState(entity, state)](#AudioSystem+setAudioState)

<a name="AudioSystem+AudioSystem"></a>

### audioSystem.AudioSystem
**Kind**: instance class of [<code>AudioSystem</code>](#AudioSystem)  
<a name="new_AudioSystem+AudioSystem_new"></a>

#### new exports.AudioSystem()
AudioSystem's Default constructor that sets up the audio listener and loader

<a name="AudioSystem+update"></a>

### audioSystem.update(deltaTime, frame)
The generic system update call. Updates the clipped view of every entity in this system's registry.

**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="AudioSystem+attachedComponent"></a>

### audioSystem.attachedComponent(entity)
Called when the entity component is initialized

**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being attached/initialized. |

<a name="AudioSystem+updatedComponent"></a>

### audioSystem.updatedComponent(entity)
Called when the entity component is updated

**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component. |

<a name="AudioSystem+detachedComponent"></a>

### audioSystem.detachedComponent(entity)
Called when the entity component is detached

**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component being detached. |

<a name="AudioSystem+setAudioState"></a>

### audioSystem.setAudioState(entity, state)
Updates the Audio State based on the user passed 'state' variable.

**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component being detached. |
| state | <code>string</code> | represents a parameter for the state of the sound 'play', 'pause', 'stop', etc |

