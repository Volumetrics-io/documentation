---
title: MRPanelEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRPanelEntity.js
---
# MRPanelEntity

<a name="MRPanelEntity"></a>

## MRPanelEntity ⇐ <code>MRDivEntity</code>
The main panel entity DOM used for webpages and UI elements in 3D space. `mr-panel`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRPanelEntity](#MRPanelEntity) ⇐ <code>MRDivEntity</code>
    * [.MRPanelEntity](#MRPanelEntity+MRPanelEntity)
        * [new exports.MRPanelEntity()](#new_MRPanelEntity+MRPanelEntity_new)
    * [.height](#MRPanelEntity+height)
    * [.connected()](#MRPanelEntity+connected)
    * [.add(entity)](#MRPanelEntity+add)
    * [.remove(entity)](#MRPanelEntity+remove)
    * [.onTouch(event)](#MRPanelEntity+onTouch)
    * [.onScroll(event)](#MRPanelEntity+onScroll)

<a name="MRPanelEntity+MRPanelEntity"></a>

### mrPanelEntity.MRPanelEntity
**Kind**: instance class of [<code>MRPanelEntity</code>](#MRPanelEntity)  
<a name="new_MRPanelEntity+MRPanelEntity_new"></a>

#### new exports.MRPanelEntity()
Constructor for the main Panel. Sets up all the relevant object3D and window information. Includes information necessary for proper scrolling usage.

<a name="MRPanelEntity+height"></a>

### mrPanelEntity.height
**Kind**: instance property of [<code>MRPanelEntity</code>](#MRPanelEntity)  
<a name="MRPanelEntity+connected"></a>

### mrPanelEntity.connected()
Callback function of MREntity - handles setting up this Panel once it is connected to run as an entity component.
             Relevant tasks include setting up clipping and setting up for all necessary dispatchEvent connections including mutations and scrolling.

**Kind**: instance method of [<code>MRPanelEntity</code>](#MRPanelEntity)  
<a name="MRPanelEntity+add"></a>

### mrPanelEntity.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRPanelEntity</code>](#MRPanelEntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRPanelEntity+remove"></a>

### mrPanelEntity.remove(entity)
Remove an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRPanelEntity</code>](#MRPanelEntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="MRPanelEntity+onTouch"></a>

### mrPanelEntity.onTouch(event)
Handles what should happen when a touch event is called. Updates items appropriately for scrolling on the panel.
             Triggers to use the browser's own scrolling without a need to fake the scrolling itself.

**Kind**: instance method of [<code>MRPanelEntity</code>](#MRPanelEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="MRPanelEntity+onScroll"></a>

### mrPanelEntity.onScroll(event)
Handles what should happen when a scroll event is called. Updates items appropriately for scrolling on the panel.

**Kind**: instance method of [<code>MRPanelEntity</code>](#MRPanelEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |

