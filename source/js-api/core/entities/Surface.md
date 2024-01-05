<a name="Surface"></a>

## Surface ⇐ <code>MREntity</code>
...TODO... how is this different than Panel in terms of use? i understand panel has more too it, but is this just a sprite? `mr-surface`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [Surface](#Surface) ⇐ <code>MREntity</code>
    * [.Surface](#Surface+Surface)
    * [.height()](#Surface+height) ⇒ <code>number</code>
    * [.width()](#Surface+width) ⇒ <code>number</code>
    * [.connected()](#Surface+connected)
    * [.add(entity)](#Surface+add)
    * [.remove(entity)](#Surface+remove)
    * [.mutated(mutation)](#Surface+mutated)
    * [.place()](#Surface+place)
    * [.replace()](#Surface+replace)
    * [.detach()](#Surface+detach)

<a name="Surface+Surface"></a>

### surface.Surface
**Kind**: instance class of [<code>Surface</code>](#Surface)  
<a name="Surface+height"></a>

### surface.height() ⇒ <code>number</code>
**Kind**: instance method of [<code>Surface</code>](#Surface)  
**Returns**: <code>number</code> - - the height of the current viewport  
<a name="Surface+width"></a>

### surface.width() ⇒ <code>number</code>
**Kind**: instance method of [<code>Surface</code>](#Surface)  
**Returns**: <code>number</code> - - the width of the current viewport  
<a name="Surface+connected"></a>

### surface.connected()
Callback function of MREntity - handles setting up this Surface once it is connected to run as an entity component.

**Kind**: instance method of [<code>Surface</code>](#Surface)  
<a name="Surface+add"></a>

### surface.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Surface</code>](#Surface)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="Surface+remove"></a>

### surface.remove(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>Surface</code>](#Surface)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="Surface+mutated"></a>

### surface.mutated(mutation)
Callback function of MREntity - updates based on the changed attribute: orientation

**Kind**: instance method of [<code>Surface</code>](#Surface)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="Surface+place"></a>

### surface.place()
Puts the surface into the scene and dispatches an event to confirm placement.

**Kind**: instance method of [<code>Surface</code>](#Surface)  
<a name="Surface+replace"></a>

### surface.replace()
Replaces /...? TODO

**Kind**: instance method of [<code>Surface</code>](#Surface)  
<a name="Surface+detach"></a>

### surface.detach()
Handles when a surface should detach from /...? TODO

**Kind**: instance method of [<code>Surface</code>](#Surface)  
