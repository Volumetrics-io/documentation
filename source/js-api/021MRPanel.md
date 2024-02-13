---
title: MRPanel
---
# MRPanel

<a name="MRPanel"></a>

## MRPanel ⇐ <code>MRDivEntity</code>
The main panel entity DOM used for webpages and UI elements in 3D space. `mr-panel`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRPanel](#MRPanel) ⇐ <code>MRDivEntity</code>
    * [.MRPanel](#MRPanel+MRPanel)
        * [new exports.MRPanel()](#new_MRPanel+MRPanel_new)
    * [.connected()](#MRPanel+connected)
    * [.add(entity)](#MRPanel+add)
    * [.remove(entity)](#MRPanel+remove)
    * [.onTouch(event)](#MRPanel+onTouch)
    * [.onScroll(event)](#MRPanel+onScroll)

<a name="MRPanel+MRPanel"></a>

### mrPanel.MRPanel
**Kind**: instance class of [<code>MRPanel</code>](#MRPanel)  
<a name="new_MRPanel+MRPanel_new"></a>

#### new exports.MRPanel()
Constructor for the main Panel. Sets up all the relevant object3D and window information. Includes information necessary for proper scrolling usage.

<a name="MRPanel+connected"></a>

### mrPanel.connected()
Callback function of MREntity - handles setting up this Panel once it is connected to run as an entity component.
             Relevant tasks include setting up clipping and setting up for all necessary dispatchEvent connections including mutations and scrolling.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  
<a name="MRPanel+add"></a>

### mrPanel.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRPanel+remove"></a>

### mrPanel.remove(entity)
Remove an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="MRPanel+onTouch"></a>

### mrPanel.onTouch(event)
Handles what should happen when a touch event is called. Updates items appropriately for scrolling on the panel.
             Triggers to use the browser's own scrolling without a need to fake the scrolling itself.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="MRPanel+onScroll"></a>

### mrPanel.onScroll(event)
Handles what should happen when a scroll event is called. Updates items appropriately for scrolling on the panel.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRPanel.js' target='_blank'>Suggest an edit on GitHub for MRPanel.js</a></div>
