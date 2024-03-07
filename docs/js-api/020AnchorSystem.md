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
    * [.needsSystemUpdate()](#AnchorSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#AnchorSystem+needsSystemUpdate)
    * [.update(deltaTime, frame)](#AnchorSystem+update)
    * [.attachedComponent(entity)](#AnchorSystem+attachedComponent)
    * [.updatedComponent(entity)](#AnchorSystem+updatedComponent)
    * [.detachedComponent(entity)](#AnchorSystem+detachedComponent)
    * [.deleteAnchor(entity)](#AnchorSystem+deleteAnchor)
    * [.createAnchor(entity, comp)](#AnchorSystem+createAnchor)
    * [.fixed(entity)](#AnchorSystem+fixed)
    * [.floating(frame)](#AnchorSystem+floating)
    * [.plane(entity, comp)](#AnchorSystem+plane)
    * [.adjustTransform(xrRigidTransform)](#AnchorSystem+adjustTransform) ⇒
    * [.matrix4ToXRRigidTransform(matrix4)](#AnchorSystem+matrix4ToXRRigidTransform)
    * [.multiplyQuaternionWithXRRigidTransform(quaternion, xrRigidTransform)](#AnchorSystem+multiplyQuaternionWithXRRigidTransform)

<a name="AnchorSystem+AnchorSystem"></a>

### anchorSystem.AnchorSystem
**Kind**: instance class of [<code>AnchorSystem</code>](#AnchorSystem)  
<a name="new_AnchorSystem+AnchorSystem_new"></a>

#### new exports.AnchorSystem()
AnchorSystem's default constructor including setting up event listeners for XR initialization, user interaction, and the MRPlaneManager

<a name="AnchorSystem+needsSystemUpdate"></a>

### anchorSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems anchoringQueue that need to be run OR the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="AnchorSystem+needsSystemUpdate"></a>

### anchorSystem.needsSystemUpdate()
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
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
**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 

<a name="AnchorSystem+updatedComponent"></a>

### anchorSystem.updatedComponent(entity)
**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 

<a name="AnchorSystem+detachedComponent"></a>

### anchorSystem.detachedComponent(entity)
**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 

<a name="AnchorSystem+deleteAnchor"></a>

### anchorSystem.deleteAnchor(entity)
deletes anchors from the scene and removes all references to the anchored plane (if any)

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 

<a name="AnchorSystem+createAnchor"></a>

### anchorSystem.createAnchor(entity, comp)
creates the anchor specified by the data-anchor-comp

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 
| comp | 

<a name="AnchorSystem+fixed"></a>

### anchorSystem.fixed(entity)
anchors the given entity half a meter in front of the users position at launch.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 

<a name="AnchorSystem+floating"></a>

### anchorSystem.floating(frame)
creates an anchor at the position specified by the user,
either floating in front of them or pinned to the scene mesh

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| frame | 

<a name="AnchorSystem+plane"></a>

### anchorSystem.plane(entity, comp)
anchors the provided entity to the nearest unoccupied plane that meets the given orientation and label.
each plane is currently limited to one anchor for simplicity.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| entity | 
| comp | 

<a name="AnchorSystem+adjustTransform"></a>

### anchorSystem.adjustTransform(xrRigidTransform) ⇒
converts the provided XRRigidTransform to a Matrix4 and adjusts it to ensure
that it's y-axis is pointing directly up and it's z-axis is facing inward

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
**Returns**: a THREE.js Matrix4  

| Param |
| --- |
| xrRigidTransform | 

<a name="AnchorSystem+matrix4ToXRRigidTransform"></a>

### anchorSystem.matrix4ToXRRigidTransform(matrix4)
converts the provided matrix4 into a webXR xompatible XRRigidTransform

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| matrix4 | 

<a name="AnchorSystem+multiplyQuaternionWithXRRigidTransform"></a>

### anchorSystem.multiplyQuaternionWithXRRigidTransform(quaternion, xrRigidTransform)
multuplies an xr rigid transform by the provided quaternion

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  

| Param |
| --- |
| quaternion | 
| xrRigidTransform | 

