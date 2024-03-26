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
    * [.update(dt, frame)](#AudioSystem+update)
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

### audioSystem.update(dt, frame)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| dt | 
| frame | 

<a name="AudioSystem+attachedComponent"></a>

### audioSystem.attachedComponent(entity)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 

<a name="AudioSystem+updatedComponent"></a>

### audioSystem.updatedComponent(entity)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 

<a name="AudioSystem+detachedComponent"></a>

### audioSystem.detachedComponent(entity)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 

<a name="AudioSystem+setAudioState"></a>

### audioSystem.setAudioState(entity, state)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 
| state | 

