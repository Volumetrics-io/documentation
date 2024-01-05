<a name="Panel"></a>

## Panel ⇐ <code>MRDivEntity</code>
The main panel entity DOM used for webpages and UI elements in 3D space. `mr-panel`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [Panel](#Panel) ⇐ <code>MRDivEntity</code>
    * [.Panel](#Panel+Panel)
        * [new exports.Panel()](#new_Panel+Panel_new)
    * [.height()](#Panel+height) ⇒ <code>number</code>
    * [.connected()](#Panel+connected)
    * [.add(entity)](#Panel+add)
    * [.remove(entity)](#Panel+remove)
    * [.onTouch(event)](#Panel+onTouch)
    * [.momentumScroll(distance, duration)](#Panel+momentumScroll)
    * [.onScroll(event)](#Panel+onScroll)

<a name="Panel+Panel"></a>

### panel.Panel
**Kind**: instance class of [<code>Panel</code>](#Panel)  
<a name="new_Panel+Panel_new"></a>

#### new exports.Panel()
Constructor for the main Panel. Sets up all the relevant object3D and window information. Includes information necessary for proper scrolling usage.

<a name="Panel+height"></a>

### panel.height() ⇒ <code>number</code>
Calculates the height of the Entity. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>Panel</code>](#Panel)  
**Returns**: <code>number</code> - - the resolved height  
<a name="Panel+connected"></a>

### panel.connected()
Callback function of MREntity - handles setting up this Panel once it is connected to run as an entity component.
             Relevant tasks include setting up clipping and setting up for all necessary dispatchEvent connections including mutations and scrolling.

**Kind**: instance method of [<code>Panel</code>](#Panel)  
<a name="Panel+add"></a>

### panel.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="Panel+remove"></a>

### panel.remove(entity)
Remove an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="Panel+onTouch"></a>

### panel.onTouch(event)
Handles what should happen when a touch event is called. Updates items appropriately for scrolling on the panel.
             Triggers to use the browser's own scrolling without a need to fake the scrolling itself.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="Panel+momentumScroll"></a>

### panel.momentumScroll(distance, duration)
Helper function for the onTouch event function. Handles properly adjusting scroll for some momentum for a more natural feel.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| distance | <code>number</code> | the distance left to scroll |
| duration | <code>number</code> | the amount of time to do the scroll distance allowing for some movement instead of instant displacement. |

<a name="Panel+onScroll"></a>

### panel.onScroll(event)
Handles what should happen when a scroll event is called. Updates items appropriately for scrolling on the panel.

**Kind**: instance method of [<code>Panel</code>](#Panel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |

