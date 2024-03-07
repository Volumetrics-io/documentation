---
title: MRDivEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRDivEntity.js
---
# MRDivEntity

<a name="MRDivEntity"></a>

## MRDivEntity ⇐ <code>MREntity</code>
The MREntity that is used to solely describe UI Elements. Defaults as the html `mr-div` representation. `mr-div`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRDivEntity](#MRDivEntity) ⇐ <code>MREntity</code>
    * [.MRDivEntity](#MRDivEntity+MRDivEntity)
        * [new exports.MRDivEntity()](#new_MRDivEntity+MRDivEntity_new)
    * [.height()](#MRDivEntity+height) ⇒ <code>number</code>
    * [.width()](#MRDivEntity+width) ⇒ <code>number</code>
    * [.borderRadii()](#MRDivEntity+borderRadii) ⇒ <code>number</code>
    * [.add(entity)](#MRDivEntity+add)
    * [.remove(entity)](#MRDivEntity+remove)
    * [.connected()](#MRDivEntity+connected)

<a name="MRDivEntity+MRDivEntity"></a>

### mrDivEntity.MRDivEntity
**Kind**: instance class of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="new_MRDivEntity+MRDivEntity_new"></a>

#### new exports.MRDivEntity()
Constructor sets up the defaults for the background mesh, scaling, and world relevant elements.

<a name="MRDivEntity+height"></a>

### mrDivEntity.height() ⇒ <code>number</code>
Calculates the height of the Entity based on the viewing-client's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRDivEntity+width"></a>

### mrDivEntity.width() ⇒ <code>number</code>
Calculates the width of the Entity based on the viewing-client's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRDivEntity+borderRadii"></a>

### mrDivEntity.borderRadii() ⇒ <code>number</code>
Calculates the border radius of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRDivEntity+add"></a>

### mrDivEntity.add(entity)
Adding an entity as a sub-object of this panel (for example an mr-model, button, etc).

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRDivEntity+remove"></a>

### mrDivEntity.remove(entity)
Removing an entity as a sub-object of this panel (for example an mr-model, button, etc).

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed added. |

<a name="MRDivEntity+connected"></a>

### mrDivEntity.connected()
Callback function of MREntity - connects the background geometry of this item to an actual UIPlane geometry.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
