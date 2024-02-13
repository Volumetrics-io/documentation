---
title: MaterialStyleSystem
---
# MaterialStyleSystem

<a name="MaterialStyleSystem"></a>

## MaterialStyleSystem ⇐ <code>MRSystem</code>
Handles style updates for all items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [MaterialStyleSystem](#MaterialStyleSystem) ⇐ <code>MRSystem</code>
    * [.MaterialStyleSystem](#MaterialStyleSystem+MaterialStyleSystem)
        * [new exports.MaterialStyleSystem()](#new_MaterialStyleSystem+MaterialStyleSystem_new)
    * [.update(deltaTime, frame)](#MaterialStyleSystem+update)
    * [.onNewEntity(entity)](#MaterialStyleSystem+onNewEntity)
    * [.setBackground()](#MaterialStyleSystem+setBackground)

<a name="MaterialStyleSystem+MaterialStyleSystem"></a>

### materialStyleSystem.MaterialStyleSystem
**Kind**: instance class of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  
<a name="new_MaterialStyleSystem+MaterialStyleSystem_new"></a>

#### new exports.MaterialStyleSystem()
StyleSystem's default constructor with a starting framerate of 1/30.

<a name="MaterialStyleSystem+update"></a>

### materialStyleSystem.update(deltaTime, frame)
The generic system update call. Handles updating all 3D items to match whatever geometry/style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MaterialStyleSystem+onNewEntity"></a>

### materialStyleSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Adds said new entity to the style's system registry.

**Kind**: instance method of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="MaterialStyleSystem+setBackground"></a>

### materialStyleSystem.setBackground()
Sets the background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  
<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/MaterialStyleSystem.js' target='_blank'>Suggest an edit on GitHub for MaterialStyleSystem.js</a></div>
