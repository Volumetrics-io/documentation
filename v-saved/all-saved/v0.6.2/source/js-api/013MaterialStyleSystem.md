---
title: MaterialStyleSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/MaterialStyleSystem.js
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
    * [._updateSpecificEntity(entity)](#MaterialStyleSystem+_updateSpecificEntity)
    * [.update(deltaTime, frame)](#MaterialStyleSystem+update)
    * [.onNewEntity(entity)](#MaterialStyleSystem+onNewEntity)
    * [.setBackground(entity)](#MaterialStyleSystem+setBackground)
    * [.setVisibility(entity)](#MaterialStyleSystem+setVisibility)

<a name="MaterialStyleSystem+MaterialStyleSystem"></a>

### materialStyleSystem.MaterialStyleSystem
**Kind**: instance class of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  
<a name="new_MaterialStyleSystem+MaterialStyleSystem_new"></a>

#### new exports.MaterialStyleSystem()
StyleSystem's default constructor with a starting framerate of 1/30.

<a name="MaterialStyleSystem+_updateSpecificEntity"></a>

### materialStyleSystem.\_updateSpecificEntity(entity)
The per entity triggered update call. Handles updating all 3D items to match whatever geometry/style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MREntity being updated. |

<a name="MaterialStyleSystem+update"></a>

### materialStyleSystem.update(deltaTime, frame)
The per-frame system update call. Handles updating all 3D items to match whatever geometry/style is expected whether that be a 2D setup or a 3D change.

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
| entity | <code>object</code> | the MREntity being touched by this function. |

<a name="MaterialStyleSystem+setBackground"></a>

### materialStyleSystem.setBackground(entity)
Sets the background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MREntity being updated. |

<a name="MaterialStyleSystem+setVisibility"></a>

### materialStyleSystem.setVisibility(entity)
Sets the visibility of the MREntity based on its css 'visibility' property.

**Kind**: instance method of [<code>MaterialStyleSystem</code>](#MaterialStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MREntity being updated. |
