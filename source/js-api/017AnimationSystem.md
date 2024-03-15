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

