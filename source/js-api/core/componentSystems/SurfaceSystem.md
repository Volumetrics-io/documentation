<a name="SurfaceSystem"></a>

## SurfaceSystem ⇐ <code>MRSystem</code>
Handles all items (3D and 2D) associated with an mr-surface including the surface itself.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [SurfaceSystem](#SurfaceSystem) ⇐ <code>MRSystem</code>
    * [.SurfaceSystem](#SurfaceSystem+SurfaceSystem)
        * [new exports.SurfaceSystem()](#new_SurfaceSystem+SurfaceSystem_new)
    * [.update(deltaTime, frame)](#SurfaceSystem+update)
    * [.resetAllSurfaces()](#SurfaceSystem+resetAllSurfaces)
    * [.lockWindow()](#SurfaceSystem+lockWindow)
    * [.placeSurface(hitResults, frame)](#SurfaceSystem+placeSurface)

<a name="SurfaceSystem+SurfaceSystem"></a>

### surfaceSystem.SurfaceSystem
**Kind**: instance class of [<code>SurfaceSystem</code>](#SurfaceSystem)  
<a name="new_SurfaceSystem+SurfaceSystem_new"></a>

#### new exports.SurfaceSystem()
SurfaceSystem's default constructor including setting up /...? TODO - i need to understand what an mr-surface is first

<a name="SurfaceSystem+update"></a>

### surfaceSystem.update(deltaTime, frame)
The generic system update call. // TODO - add better description here

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="SurfaceSystem+resetAllSurfaces"></a>

### surfaceSystem.resetAllSurfaces()
Detaches all surfaces in this system and resets them

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  
<a name="SurfaceSystem+lockWindow"></a>

### surfaceSystem.lockWindow()
Locks the window in place where it has been positioned after being moved.

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  
<a name="SurfaceSystem+placeSurface"></a>

### surfaceSystem.placeSurface(hitResults, frame)
Places the surface based on the user's current pose position??? TODO

**Kind**: instance method of [<code>SurfaceSystem</code>](#SurfaceSystem)  

| Param | Type | Description |
| --- | --- | --- |
| hitResults | <code>object</code> | TODO |
| frame | <code>object</code> | TODO |

