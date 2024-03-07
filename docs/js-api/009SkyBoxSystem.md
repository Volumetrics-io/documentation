---
title: SkyBoxSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/SkyBoxSystem.js
---
# SkyBoxSystem

<a name="SkyBoxSystem"></a>

## SkyBoxSystem ⇐ <code>MRSystem</code>
Handles skybox interactions and updates for all items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [SkyBoxSystem](#SkyBoxSystem) ⇐ <code>MRSystem</code>
    * [.SkyBoxSystem](#SkyBoxSystem+SkyBoxSystem)
        * [new exports.SkyBoxSystem()](#new_SkyBoxSystem+SkyBoxSystem_new)
    * [.update(deltaTime, frame)](#SkyBoxSystem+update)
    * [.onNewEntity(entity)](#SkyBoxSystem+onNewEntity)

<a name="SkyBoxSystem+SkyBoxSystem"></a>

### skyBoxSystem.SkyBoxSystem
**Kind**: instance class of [<code>SkyBoxSystem</code>](#SkyBoxSystem)  
<a name="new_SkyBoxSystem+SkyBoxSystem_new"></a>

#### new exports.SkyBoxSystem()
SkyBox's default constructor

<a name="SkyBoxSystem+update"></a>

### skyBoxSystem.update(deltaTime, frame)
The generic system update call.

**Kind**: instance method of [<code>SkyBoxSystem</code>](#SkyBoxSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="SkyBoxSystem+onNewEntity"></a>

### skyBoxSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Adds said new entity to the style's system registry.

**Kind**: instance method of [<code>SkyBoxSystem</code>](#SkyBoxSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

