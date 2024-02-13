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
    * [.alwaysNeedsGeometryUpdate()](#MREntity+alwaysNeedsGeometryUpdate) ⇒ <code>boolean</code>
    * [.alwaysNeedsGeometryUpdate()](#MREntity+alwaysNeedsGeometryUpdate)
    * [.needsGeometryUpdate()](#MREntity+needsGeometryUpdate) ⇒ <code>boolean</code>
    * [.needsGeometryUpdate()](#MREntity+needsGeometryUpdate)
    * [.alwaysNeedsStyleUpdate()](#MREntity+alwaysNeedsStyleUpdate) ⇒ <code>boolean</code>
    * [.alwaysNeedsStyleUpdate()](#MREntity+alwaysNeedsStyleUpdate)
    * [.needsStyleUpdate()](#MREntity+needsStyleUpdate) ⇒ <code>boolean</code>
    * [.needsStyleUpdate()](#MREntity+needsStyleUpdate)
    * [.updateMaterialStyle()](#MREntity+updateMaterialStyle)
    * [.updateGeometryStyle()](#MREntity+updateGeometryStyle)
    * [.onHover(event)](#MREntity+onHover)
    * [.onTouch(event)](#MREntity+onTouch)
    * [.onScroll(event)](#MREntity+onScroll)
    * [.connectedCallback()](#MREntity+connectedCallback)
    * [.loadAttributes()](#MREntity+loadAttributes)
    * [.connected()](#MREntity+connected)
    * [.disconnected()](#MREntity+disconnected)
    * [.disconnectedCallback()](#MREntity+disconnectedCallback)
    * [.mutated(mutation)](#MREntity+mutated)
    * [.mutationCallback(mutationList, observer)](#MREntity+mutationCallback)
    * [.componentMutated(mutation)](#MREntity+componentMutated)
    * [.add(entity)](#MREntity+add)
    * [.remove(entity)](#MREntity+remove)
    * [.traverse(callBack)](#MREntity+traverse)

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
<a name="MREntity+alwaysNeedsGeometryUpdate"></a>

### mrEntity.alwaysNeedsGeometryUpdate() ⇒ <code>boolean</code>
Checks if the system is setup to always run instead of being in a state that allows for toggling on and off.
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>boolean</code> - true if the internal _needsSystemUpdate is set to 'undefined', false otherwise.  
<a name="MREntity+alwaysNeedsGeometryUpdate"></a>

### mrEntity.alwaysNeedsGeometryUpdate()
Sets the system ito always run (true) or to be in a state that allows for toggling on and off (false).
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+needsGeometryUpdate"></a>

### mrEntity.needsGeometryUpdate() ⇒ <code>boolean</code>
Getter to checks if we need the StyleSystem to run on this entity during the current iteration.
Default implementation returns true if the needsSystemUpdate flag has been set to true or is in the alwaysNeedsSystemUpdate state.
Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MREntity+needsGeometryUpdate"></a>

### mrEntity.needsGeometryUpdate()
Set the needsStyleUpdate parameter.
undefined - means the StyleSystem will update this entity's style every time the application loops.
true/false - means the StyleSystem will update this entity's style only running one iteration when set to true and then reset back to false waiting for the next trigger.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+alwaysNeedsStyleUpdate"></a>

### mrEntity.alwaysNeedsStyleUpdate() ⇒ <code>boolean</code>
Checks if the system is setup to always run instead of being in a state that allows for toggling on and off.
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>boolean</code> - true if the internal _needsSystemUpdate is set to 'undefined', false otherwise.  
<a name="MREntity+alwaysNeedsStyleUpdate"></a>

### mrEntity.alwaysNeedsStyleUpdate()
Sets the system ito always run (true) or to be in a state that allows for toggling on and off (false).
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+needsStyleUpdate"></a>

### mrEntity.needsStyleUpdate() ⇒ <code>boolean</code>
Getter to checks if we need the StyleSystem to run on this entity during the current iteration.
Default implementation returns true if the needsSystemUpdate flag has been set to true or is in the alwaysNeedsSystemUpdate state.
Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MREntity+needsStyleUpdate"></a>

### mrEntity.needsStyleUpdate()
Set the needsStyleUpdate parameter.
undefined - means the StyleSystem will update this entity's style every time the application loops.
true/false - means the StyleSystem will update this entity's style only running one iteration when set to true and then reset back to false waiting for the next trigger.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+updateMaterialStyle"></a>

### mrEntity.updateMaterialStyle()
Inside the engine's ECS these arent filled in, theyre directly in the system themselves - but they can be overwritten by others when they create new entities

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+updateGeometryStyle"></a>

### mrEntity.updateGeometryStyle()
Inside the engine's ECS these arent filled in, theyre directly in the system themselves - but they can be overwritten by others when they create new entities

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

<a name="MREntity+connectedCallback"></a>

### mrEntity.connectedCallback()
The connectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+loadAttributes"></a>

### mrEntity.loadAttributes()
Loads all attributes of this entity's stored dataset including components, attaching them, and their associated rotations and positions.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+connected"></a>

### mrEntity.connected()
Callback function of MREntity - does nothing. Is called by the connectedCallback.

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

