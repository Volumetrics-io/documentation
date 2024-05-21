---
title: AnchorSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/AnchorSystem.js
---
# AnchorSystem

<a name="AnchorSystem"></a>

## AnchorSystem ⇐ <code>MRSystem</code>
creates and manages WebXR anchors in the MR scene.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AnchorSystem](#AnchorSystem) ⇐ <code>MRSystem</code>
    * [.AnchorSystem](#AnchorSystem+AnchorSystem)
        * [new exports.AnchorSystem()](#new_AnchorSystem+AnchorSystem_new)
    * [.update(deltaTime, frame)](#AnchorSystem+update)
    * [.attachedComponent(entity)](#AnchorSystem+attachedComponent)
    * [.updatedComponent(entity)](#AnchorSystem+updatedComponent)
    * [.detachedComponent(entity)](#AnchorSystem+detachedComponent)
    * [.deleteAnchor(entity)](#AnchorSystem+deleteAnchor)
    * [.createAnchor(entity, comp)](#AnchorSystem+createAnchor)
    * [.setAppOrigin()](#AnchorSystem+setAppOrigin)
    * [.updateOrigin(frame)](#AnchorSystem+updateOrigin)
    * [.fixed(entity)](#AnchorSystem+fixed)
    * [.floating(frame)](#AnchorSystem+floating)
    * [.plane(entity, comp)](#AnchorSystem+plane)
    * [.adjustTransform(xrRigidTransform, origin)](#AnchorSystem+adjustTransform) ⇒ <code>object</code>
    * [.matrix4ToXRRigidTransform(matrix4)](#AnchorSystem+matrix4ToXRRigidTransform) ⇒ <code>object</code>
    * [.multiplyQuaternionWithXRRigidTransform(quaternion, xrRigidTransform)](#AnchorSystem+multiplyQuaternionWithXRRigidTransform) ⇒ <code>object</code>

<a name="AnchorSystem+AnchorSystem"></a>

### anchorSystem.AnchorSystem
**Kind**: instance class of [<code>AnchorSystem</code>](#AnchorSystem)  
<a name="new_AnchorSystem+AnchorSystem_new"></a>

#### new exports.AnchorSystem()
AnchorSystem's default constructor including setting up event listeners for XR initialization, user interaction, and the MRPlaneManager

<a name="AnchorSystem+update"></a>

### anchorSystem.update(deltaTime, frame)
This update function maintains the transforms of anchored entities.
This overrides any other transform values set on the element when in mixed reality.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="AnchorSystem+attachedComponent"></a>

### anchorSystem.attachedComponent(entity)
Called when the entity component is initialized

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being attached/initialized. |

<a name="AnchorSystem+updatedComponent"></a>

### anchorSystem.updatedComponent(entity)
Called when the entity component is updated

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component. |

<a name="AnchorSystem+detachedComponent"></a>

### anchorSystem.detachedComponent(entity)
Called when the entity component is detached

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being updated based on the component being detached. |

<a name="AnchorSystem+deleteAnchor"></a>

### anchorSystem.deleteAnchor(entity)
deletes anchors from the scene and removes all references to the anchored plane (if any)

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity whose anchor is being deleted. |

<a name="AnchorSystem+createAnchor"></a>

### anchorSystem.createAnchor(entity, comp)
creates the anchor specified by the data-anchor-comp

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity whose anchor is being created. |
| comp | <code>object</code> | the data component with a type value that represents the string 'fixed', 'plane', 'floating', etc |

<a name="AnchorSystem+setAppOrigin"></a>

### anchorSystem.setAppOrigin()
Sets the origin of the MRApp being touched by all systems to allow anchoring to position
itself properly.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
<a name="AnchorSystem+updateOrigin"></a>

### anchorSystem.updateOrigin(frame)
Updates the origin of the MRApp being touched by all systems to allow anchoring to position.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| frame | <code>object</code> | given frame information to be used for any feature changes (from the update(..) loop) |

<a name="AnchorSystem+fixed"></a>

### anchorSystem.fixed(entity)
Anchors the given entity half a meter in front of the users position at launch.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being positioned. |

<a name="AnchorSystem+floating"></a>

### anchorSystem.floating(frame)
Creates an anchor at the position specified by the user,
either floating in front of them or pinned to the scene mesh

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| frame | <code>object</code> | given frame information to be used for any feature changes (from the update(..) loop) |

<a name="AnchorSystem+plane"></a>

### anchorSystem.plane(entity, comp)
Anchors the provided entity to the nearest unoccupied plane that meets the given orientation and label.
each plane is currently limited to one anchor for simplicity.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being anchored by this function. |
| comp | <code>object</code> | the data-component to determine the orientation and label of the associated plane |

<a name="AnchorSystem+adjustTransform"></a>

### anchorSystem.adjustTransform(xrRigidTransform, origin) ⇒ <code>object</code>
converts the provided XRRigidTransform to a Matrix4 and adjusts it to ensure
that it's y-axis is pointing directly up and it's z-axis is facing inward

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
**Returns**: <code>object</code> - a new adjusted THREE.js Matrix4  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| xrRigidTransform | <code>object</code> |  | a THREE.js transformation matrix that we want to adjust |
| origin | <code>boolean</code> | <code>false</code> | true if this is positioned at the origin or not (handles special case of div-0). |

<a name="AnchorSystem+matrix4ToXRRigidTransform"></a>

### anchorSystem.matrix4ToXRRigidTransform(matrix4) ⇒ <code>object</code>
Converts the provided matrix4 into a webXR xompatible XRRigidTransform

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
**Returns**: <code>object</code> - xrRigidTransform - the converted representation of the param matrix4  

| Param | Type | Description |
| --- | --- | --- |
| matrix4 | <code>object</code> | the matrix we want to convert to a XRRigidTransform |

<a name="AnchorSystem+multiplyQuaternionWithXRRigidTransform"></a>

### anchorSystem.multiplyQuaternionWithXRRigidTransform(quaternion, xrRigidTransform) ⇒ <code>object</code>
Multiplies an xr rigid transform by the provided quaternion

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
**Returns**: <code>object</code> - xrRigidTransform - the output of the quaternion * xrRigidTransform in the form of an xrRigidTransform  

| Param | Type | Description |
| --- | --- | --- |
| quaternion | <code>object</code> | the quaternion we want to multiply with the xrRigidTransform |
| xrRigidTransform | <code>object</code> | the second part of the multiplication we are looking to perform. |

