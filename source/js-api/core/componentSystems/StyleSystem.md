<a name="StyleSystem"></a>

## StyleSystem ⇐ <code>MRSystem</code>
Handles style updates for all items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [StyleSystem](#StyleSystem) ⇐ <code>MRSystem</code>
    * [.StyleSystem](#StyleSystem+StyleSystem)
        * [new exports.StyleSystem()](#new_StyleSystem+StyleSystem_new)
    * [.update(deltaTime, frame)](#StyleSystem+update)
    * [.onNewEntity(entity)](#StyleSystem+onNewEntity)

<a name="StyleSystem+StyleSystem"></a>

### styleSystem.StyleSystem
**Kind**: instance class of [<code>StyleSystem</code>](#StyleSystem)  
<a name="new_StyleSystem+StyleSystem_new"></a>

#### new exports.StyleSystem()
StyleSystem's default constructor with a starting framerate of 1/30.

<a name="StyleSystem+update"></a>

### styleSystem.update(deltaTime, frame)
The generic system update call. Handles updating all 3D items to match whatever style is expected whether that be a 2D setup or a 3D change.

**Kind**: instance method of [<code>StyleSystem</code>](#StyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="StyleSystem+onNewEntity"></a>

### styleSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Adds said new entity to the style's system registry.

**Kind**: instance method of [<code>StyleSystem</code>](#StyleSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

