<a name="ControlSystem"></a>

## ControlSystem ⇐ <code>MRSystem</code>
This system supports interaction event information including mouse and controller interfacing.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ControlSystem](#ControlSystem) ⇐ <code>MRSystem</code>
    * [.ControlSystem](#ControlSystem+ControlSystem)
        * [new exports.ControlSystem()](#new_ControlSystem+ControlSystem_new)
    * [.update(deltaTime, frame)](#ControlSystem+update)
    * [.mouseOver(event)](#ControlSystem+mouseOver)
    * [.onMouseDown(event)](#ControlSystem+onMouseDown)
    * [.onMouseUp(event)](#ControlSystem+onMouseUp)
    * [.removeCursor()](#ControlSystem+removeCursor)
    * [.pixelRayCast(event)](#ControlSystem+pixelRayCast) ⇒ <code>object</code>

<a name="ControlSystem+ControlSystem"></a>

### controlSystem.ControlSystem
**Kind**: instance class of [<code>ControlSystem</code>](#ControlSystem)  
<a name="new_ControlSystem+ControlSystem_new"></a>

#### new exports.ControlSystem()
ControlSystem's Default constructor that sets up the app's mouse information along with any relevant physics and cursor information.

<a name="ControlSystem+update"></a>

### controlSystem.update(deltaTime, frame)
The generic system update call. Updates the meshes and states for both the left and right hand visuals.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ControlSystem+mouseOver"></a>

### controlSystem.mouseOver(event)
Handles the mouse over event

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouse over event |

<a name="ControlSystem+onMouseDown"></a>

### controlSystem.onMouseDown(event)
Handles the mouse down event

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouse down event |

<a name="ControlSystem+onMouseUp"></a>

### controlSystem.onMouseUp(event)
Handles the mouse up event

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouse up event |

<a name="ControlSystem+removeCursor"></a>

### controlSystem.removeCursor()
Handles the removeCursor callback.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
<a name="ControlSystem+pixelRayCast"></a>

### controlSystem.pixelRayCast(event) ⇒ <code>object</code>
Raycast into the scene using the information from the event that called it.

**Kind**: instance method of [<code>ControlSystem</code>](#ControlSystem)  
**Returns**: <code>object</code> - - collision item for what the ray hit in the 3d scene.  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the event being handled |

