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
    * [._updateSpecificEntity(entity)](#GeometryStyleSystem+_updateSpecificEntity)
    * [.eventUpdate()](#GeometryStyleSystem+eventUpdate)
    * [.update(deltaTime, frame)](#GeometryStyleSystem+update)
    * [.onNewEntity(entity)](#GeometryStyleSystem+onNewEntity)
    * [.setScale(entity)](#GeometryStyleSystem+setScale) ⇒ <code>boolean</code>
    * [.setUpdatedBorder(entity)](#GeometryStyleSystem+setUpdatedBorder) ⇒ <code>boolean</code>
    * [.setUpdatedMediaPlane(entity)](#GeometryStyleSystem+setUpdatedMediaPlane) ⇒ <code>boolean</code>

<a name="GeometryStyleSystem+GeometryStyleSystem"></a>

### geometryStyleSystem.GeometryStyleSystem
**Kind**: instance class of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
<a name="new_GeometryStyleSystem+GeometryStyleSystem_new"></a>

#### new exports.GeometryStyleSystem()
StyleSystem's default constructor with a starting framerate of 1/30.

<a name="GeometryStyleSystem+_updateSpecificEntity"></a>

### geometryStyleSystem.\_updateSpecificEntity(entity)
The per entity triggered update call. Handles updating all 3D items to match whatever geometry/style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MREntity to be updated by this function. |

<a name="GeometryStyleSystem+eventUpdate"></a>

### geometryStyleSystem.eventUpdate()
The per global scene event update call. Handles updating all 3D items to match whatever geometry/style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
<a name="GeometryStyleSystem+update"></a>

### geometryStyleSystem.update(deltaTime, frame)
The per-frame system update call.

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

<a name="GeometryStyleSystem+setScale"></a>

### geometryStyleSystem.setScale(entity) ⇒ <code>boolean</code>
Sets the scale of the MREntity based on its css scale value, otherwise defaults to 1.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
**Returns**: <code>boolean</code> - true if updated, false otherwise.  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MREntity to be updated by this function. |

<a name="GeometryStyleSystem+setUpdatedBorder"></a>

### geometryStyleSystem.setUpdatedBorder(entity) ⇒ <code>boolean</code>
Sets the border of the UI based on compStyle and inputted css elements.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
**Returns**: <code>boolean</code> - true if updated, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MREntity to be updated by this function. |

<a name="GeometryStyleSystem+setUpdatedMediaPlane"></a>

### geometryStyleSystem.setUpdatedMediaPlane(entity) ⇒ <code>boolean</code>
Updates the Media Plane for this geometry. Specific to the MRMedia subclasses.

**Kind**: instance method of [<code>GeometryStyleSystem</code>](#GeometryStyleSystem)  
**Returns**: <code>boolean</code> - true if updated, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the MRMediaEntity to be updated by this function. |

