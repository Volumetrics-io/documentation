---
title: MRPlaneManager
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/dataManagers/MRPlaneManager.js
---
# MRPlaneManager

<a name="MRPlaneManager"></a>

## MRPlaneManager
creates and manages the MRjs representation of XR planes.
The resulting planes have RAPIER rigid bodies and THREE.js meshes that occlude virtual content by default

**Kind**: global class  

* [MRPlaneManager](#MRPlaneManager)
    * [.MRPlaneManager](#MRPlaneManager+MRPlaneManager)
        * [new exports.MRPlaneManager(scene, occlusion)](#new_MRPlaneManager+MRPlaneManager_new)
    * [.initPlane(plane, width, height)](#MRPlaneManager+initPlane) ⇒ <code>object</code>
    * [.removePlane(plane, mrplane)](#MRPlaneManager+removePlane)
    * [.initPhysicsBody()](#MRPlaneManager+initPhysicsBody) ⇒ <code>object</code>

<a name="MRPlaneManager+MRPlaneManager"></a>

### mrPlaneManager.MRPlaneManager
**Kind**: instance class of [<code>MRPlaneManager</code>](#MRPlaneManager)  
<a name="new_MRPlaneManager+MRPlaneManager_new"></a>

#### new exports.MRPlaneManager(scene, occlusion)

| Param | Type | Description |
| --- | --- | --- |
| scene | <code>object</code> | the MRApp's threejs scene object |
| occlusion | <code>boolean</code> | whether or not the MRPlaneManager should make the planes visible or not |

<a name="MRPlaneManager+initPlane"></a>

### mrPlaneManager.initPlane(plane, width, height) ⇒ <code>object</code>
Initializes the MRPlane for this.currentPlanes at the 'plane' key

**Kind**: instance method of [<code>MRPlaneManager</code>](#MRPlaneManager)  
**Returns**: <code>object</code> - MRPlane - the MRPlane object that was initialized by this function.  

| Param | Type | Description |
| --- | --- | --- |
| plane | <code>object</code> | the map key of this.currentPlanes for which we want to initPlane to fill in its value. |
| width | <code>number</code> | expected width of the new MRPlane |
| height | <code>number</code> | expected height of the new MRPlane |

<a name="MRPlaneManager+removePlane"></a>

### mrPlaneManager.removePlane(plane, mrplane)
Removes the MRPlane from the scene and removes the plane object from the currentPlanes map.

**Kind**: instance method of [<code>MRPlaneManager</code>](#MRPlaneManager)  

| Param | Type | Description |
| --- | --- | --- |
| plane | <code>object</code> | plane object associated with this specific MRPlane in the scene |
| mrplane | <code>object</code> | the specific MRPlane object being removed from the scene |

<a name="MRPlaneManager+initPhysicsBody"></a>

### mrPlaneManager.initPhysicsBody() ⇒ <code>object</code>
Initializes the physics body of an MRPlane

**Kind**: instance method of [<code>MRPlaneManager</code>](#MRPlaneManager)  
**Returns**: <code>object</code> - body - the created rigid body for the plane  
