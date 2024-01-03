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
    * [.add(entity)](#MRDivEntity+add)
    * [.remove(entity)](#MRDivEntity+remove)
    * [.connected()](#MRDivEntity+connected)
    * [.updatePhysicsData()](#MRDivEntity+updatePhysicsData)
    * [.domToThree(val)](#MRDivEntity+domToThree) ⇒ <code>number</code>
    * [.updateStyle()](#MRDivEntity+updateStyle)
    * [.setBorder()](#MRDivEntity+setBorder)
    * [.setBackground()](#MRDivEntity+setBackground)

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
<a name="MRDivEntity+updatePhysicsData"></a>

### mrDivEntity.updatePhysicsData()
Updates the physics data for the current iteration. Calculates this.physics based on current stored object3D information.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+domToThree"></a>

### mrDivEntity.domToThree(val) ⇒ <code>number</code>
Converts the dom string to a 3D numerical value

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the 3D numerical represenation of the dom css value  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>string</code> | the dom css information includes items of the form `XXXpx`, `XXX%`, etc |

<a name="MRDivEntity+updateStyle"></a>

### mrDivEntity.updateStyle()
Updates the style for the UIPlane's border and background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+setBorder"></a>

### mrDivEntity.setBorder()
Sets the border of the UI based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+setBackground"></a>

### mrDivEntity.setBackground()
Sets the background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
