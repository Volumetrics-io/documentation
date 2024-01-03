<a name="ClippingSystem"></a>

## ClippingSystem ⇐ <code>MRSystem</code>
This system supports 3D clipping following threejs's clipping planes setup.
             See https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes for more information.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ClippingSystem](#ClippingSystem) ⇐ <code>MRSystem</code>
    * [.ClippingSystem](#ClippingSystem+ClippingSystem)
        * [new exports.ClippingSystem()](#new_ClippingSystem+ClippingSystem_new)
    * [.update(deltaTime, frame)](#ClippingSystem+update)
    * [.applyClipping(object, clipping)](#ClippingSystem+applyClipping)
    * [.addClippingPlanes(entity)](#ClippingSystem+addClippingPlanes)
    * [.onNewEntity(entity)](#ClippingSystem+onNewEntity)
    * [.updatePlanes(entity)](#ClippingSystem+updatePlanes)

<a name="ClippingSystem+ClippingSystem"></a>

### clippingSystem.ClippingSystem
**Kind**: instance class of [<code>ClippingSystem</code>](#ClippingSystem)  
<a name="new_ClippingSystem+ClippingSystem_new"></a>

#### new exports.ClippingSystem()
ClippingSystem's default constructor that sets up coplanar points and the default clipping information.

<a name="ClippingSystem+update"></a>

### clippingSystem.update(deltaTime, frame)
The generic system update call. Updates the clipped view of every entity in this system's registry.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ClippingSystem+applyClipping"></a>

### clippingSystem.applyClipping(object, clipping)
Helper method for `onNewEntity`. Actually applies the clipping planes to the material setup for rendering.
Uses threejs in the background following https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| object | <code>object</code> | the object3D item to be clipped |
| clipping | <code>ClippingGeometry</code> | the clipping information to be passed to the material |

<a name="ClippingSystem+addClippingPlanes"></a>

### clippingSystem.addClippingPlanes(entity)
Helper method for `onNewEntity`. Creates a clipping planes information (still writing this description)

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to which we're adding the clipping planes information |

<a name="ClippingSystem+onNewEntity"></a>

### clippingSystem.onNewEntity(entity)
When the system swaps to a new entity, this handles applying the clipping planes as needed in the system run.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | given entity that will be clipped by the planes. |

<a name="ClippingSystem+updatePlanes"></a>

### clippingSystem.updatePlanes(entity)
Updates the stored clipping planes to be based on the passed in entity.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | given entity that will be used to create the clipping planes positioning. |

