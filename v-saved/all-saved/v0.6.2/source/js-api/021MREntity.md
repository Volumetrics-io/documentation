---
title: MREntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/MREntity.js
---
# MREntity

<a name="MREntity"></a>

## MREntity ⇐ <code>MRElement</code>
The default representation of an MRElement to be expanded upon by actual details ECS Entity items. `mr-entity`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MREntity](#MREntity) ⇐ <code>MRElement</code>
    * [.MREntity](#MREntity+MREntity)
        * [new exports.MREntity()](#new_MREntity+MREntity_new)
    * [.width()](#MREntity+width) ⇒ <code>number</code>
    * [.contentWidth()](#MREntity+contentWidth) ⇒ <code>number</code>
    * [.height()](#MREntity+height) ⇒ <code>number</code>
    * [.contentHeight()](#MREntity+contentHeight) ⇒ <code>number</code>
    * [.triggerGeometryStyleUpdate()](#MREntity+triggerGeometryStyleUpdate)
    * [.triggerMaterialStyleUpdate()](#MREntity+triggerMaterialStyleUpdate)
    * [.updateMaterialStyle()](#MREntity+updateMaterialStyle)
    * [.updateGeometryStyle()](#MREntity+updateGeometryStyle)
    * [.onHover(event)](#MREntity+onHover)
    * [.onTouch(event)](#MREntity+onTouch)
    * [.onScroll(event)](#MREntity+onScroll)
    * [.loadAttributes()](#MREntity+loadAttributes)
    * [.connected()](#MREntity+connected)
    * [.connectedCallback()](#MREntity+connectedCallback)
    * [.disconnected()](#MREntity+disconnected)
    * [.disconnectedCallback()](#MREntity+disconnectedCallback)
    * [.mutated(mutation)](#MREntity+mutated)
    * [.mutationCallback(mutationList, observer)](#MREntity+mutationCallback)
    * [.componentMutated(mutation)](#MREntity+componentMutated)
    * [.add(entity)](#MREntity+add)
    * [.remove(entity)](#MREntity+remove)
    * [.traverse(callBack)](#MREntity+traverse)
    * [.traverseObjects(callBack)](#MREntity+traverseObjects)

<a name="MREntity+MREntity"></a>

### mrEntity.MREntity
**Kind**: instance class of [<code>MREntity</code>](#MREntity)  
<a name="new_MREntity+MREntity_new"></a>

#### new exports.MREntity()
Constructor for the default Entity Component (MREntity).
             Sets up the base object3D and useful Mixed Reality information including rendering, touching, and component basics.

<a name="MREntity+width"></a>

### mrEntity.width() ⇒ <code>number</code>
Calculates the width of the Entity based on the viewPort's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MREntity+contentWidth"></a>

### mrEntity.contentWidth() ⇒ <code>number</code>
The actual 3D value of the content's width.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - width of the 3D object.  
<a name="MREntity+height"></a>

### mrEntity.height() ⇒ <code>number</code>
Calculates the height of the Entity based on the viewPort's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MREntity+contentHeight"></a>

### mrEntity.contentHeight() ⇒ <code>number</code>
The actual 3D value of the content's height.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - height of the 3D object.  
<a name="MREntity+triggerGeometryStyleUpdate"></a>

### mrEntity.triggerGeometryStyleUpdate()
Triggers a system run to update geometry specifically for the entity calling it. Useful when it's not an overall scene event and for cases where
relying on an overall scene or all items to update isnt beneficial.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+triggerMaterialStyleUpdate"></a>

### mrEntity.triggerMaterialStyleUpdate()
Triggers a system run to update material specifically for the entity calling it. Useful when it's not an overall scene event and for cases where
relying on an overall scene or all items to update isnt beneficial.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+updateMaterialStyle"></a>

### mrEntity.updateMaterialStyle()
Directly in MRjs, this function is empty. It is called directly in the
MaterialStyleSystem. This allows outside users to add their own additional functionality
for the entities. These are run after the MaterialStyleSystem does its own update on the entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+updateGeometryStyle"></a>

### mrEntity.updateGeometryStyle()
Directly in MRjs, this function is empty. It is called directly in the
GeometryStyleSystem. This allows outside users to add their own additional functionality
for the entities. These are run after the GeometryStyleSystem does its own update on the entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+onHover"></a>

### mrEntity.onHover(event)
Handles the hover event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the hover event |

<a name="MREntity+onTouch"></a>

### mrEntity.onTouch(event)
Handles the touch event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="MREntity+onScroll"></a>

### mrEntity.onScroll(event)
Handles the scroll event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |

<a name="MREntity+loadAttributes"></a>

### mrEntity.loadAttributes()
Loads all attributes of this entity's stored dataset including components, attaching them, and their associated rotations and positions.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+connected"></a>

### mrEntity.connected()
(async) does nothing. Is called by the connectedCallback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+connectedCallback"></a>

### mrEntity.connectedCallback()
The connectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+disconnected"></a>

### mrEntity.disconnected()
Callback function of MREntity - does nothing. Is called by the disconnectedCallback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+disconnectedCallback"></a>

### mrEntity.disconnectedCallback()
The disconnectedCallback function that runs whenever this entity component becomes disconnected from something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+mutated"></a>

### mrEntity.mutated(mutation)
Callback function of MREntity - does nothing. Is called by mutation Callback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MREntity+mutationCallback"></a>

### mrEntity.mutationCallback(mutationList, observer)
The mutationCallback function that runs whenever this entity component should be mutated.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutationList | <code>object</code> | the list of update/change/mutation(s) to be handled. |
| observer | <code>object</code> | w3 standard object that watches for changes on the HTMLElement |

<a name="MREntity+componentMutated"></a>

### mrEntity.componentMutated(mutation)
Helper function for the mutationCallback. Handles actually updating this entity component with all the associated dispatchEvents.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MREntity+add"></a>

### mrEntity.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | [<code>MREntity</code>](#MREntity) | the entity to be added. |

<a name="MREntity+remove"></a>

### mrEntity.remove(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | [<code>MREntity</code>](#MREntity) | the entity to be removed. |

<a name="MREntity+traverse"></a>

### mrEntity.traverse(callBack)
Runs the passed through function on this object and every child of this object.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| callBack | <code>function</code> | the function to run recursively. |

<a name="MREntity+traverseObjects"></a>

### mrEntity.traverseObjects(callBack)
Runs the passed through function on the objects associated with this Entity

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| callBack | <code>function</code> | the function to run recursively. |

