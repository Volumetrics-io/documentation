---
title: GeometryStyleSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/GeometryStyleSystem.js
---
# GeometryStyleSystem

<a name="GeometryStyleSystem"></a>

## GeometryStyleSystem ⇐ <code>MRSystem</code>
Handles geometry updates for all items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [GeometryStyleSystem](#GeometryStyleSystem) ⇐ <code>MRSystem</code>
    * [.GeometryStyleSystem](#GeometryStyleSystem+GeometryStyleSystem)
        * [new exports.GeometryStyleSystem()](#new_GeometryStyleSystem+GeometryStyleSystem_new)
    * [.update(deltaTime, frame)](#GeometryStyleSystem+update)
    * [.onNewEntity(entity)](#GeometryStyleSystem+onNewEntity)
    * [.setUpdatedBorder()](#GeometryStyleSystem+setUpdatedBorder)

<a name="GeometryStyleSystem+GeometryStyleSystem"></a>

### geometryStyleSystem.GeometryStyleSystem
**Kind**: instance class of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
<a name="new_GeometryStyleSystem+GeometryStyleSystem_new"></a>

#### new exports.GeometryStyleSystem()
StyleSystem's default constructor with a starting framerate of 1/30.

<a name="GeometryStyleSystem+update"></a>

### geometryStyleSystem.update(deltaTime, frame)
The generic system update call. Handles updating all 3D items to match whatever geometry/style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="GeometryStyleSystem+onNewEntity"></a>

### geometryStyleSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Adds said new entity to the style's system registry.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="GeometryStyleSystem+setUpdatedBorder"></a>

### geometryStyleSystem.setUpdatedBorder()
Sets the border of the UI based on compStyle and inputted css elements.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
