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
        * [new exports.MRPlaneManager(scene)](#new_MRPlaneManager+MRPlaneManager_new)
    * [.initPhysicsBody(plane)](#MRPlaneManager+initPhysicsBody)

<a name="MRPlaneManager+MRPlaneManager"></a>

### mrPlaneManager.MRPlaneManager
**Kind**: instance class of [<code>MRPlaneManager</code>](#MRPlaneManager)  
<a name="new_MRPlaneManager+MRPlaneManager_new"></a>

#### new exports.MRPlaneManager(scene)

| Param |
| --- |
| scene | 

<a name="MRPlaneManager+initPhysicsBody"></a>

### mrPlaneManager.initPhysicsBody(plane)
initializes the physics body of an MR Plane

**Kind**: instance method of [<code>MRPlaneManager</code>](#MRPlaneManager)  

| Param |
| --- |
| plane | 

