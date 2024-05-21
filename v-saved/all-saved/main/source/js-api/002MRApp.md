---
title: MRApp
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRApp.js
---
# MRApp

<a name="MRApp"></a>

## MRApp ⇐ <code>MRElement</code>
The engine handler for running MRjs as an App. `mr-app`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MRApp](#MRApp) ⇐ <code>MRElement</code>
    * _instance_
        * [.MRApp](#MRApp+MRApp)
            * [new exports.MRApp()](#new_MRApp+MRApp_new)
        * [.appWidth()](#MRApp+appWidth) ⇒ <code>number</code>
        * [.appHeight()](#MRApp+appHeight) ⇒ <code>number</code>
        * [.mutatedAttribute(mutation)](#MRApp+mutatedAttribute)
        * [.mutatedChildList(mutation)](#MRApp+mutatedChildList)
        * [.mutationCallback(mutationList, observer)](#MRApp+mutationCallback)
        * [.init()](#MRApp+init)
        * [.initCamera()](#MRApp+initCamera)
        * [.initLights(data)](#MRApp+initLights)
        * [.denit()](#MRApp+denit)
        * [.registerSystem(system)](#MRApp+registerSystem)
        * [.unregisterSystem(system)](#MRApp+unregisterSystem)
        * [.add(entity)](#MRApp+add)
        * [.removeEntity(entity)](#MRApp+removeEntity)
        * [.onWindowResize()](#MRApp+onWindowResize)
        * [.render(timeStamp, frame)](#MRApp+render)
    * _static_
        * [.Connected()](#MRApp.Connected)
        * [.Disconnected()](#MRApp.Disconnected)

<a name="MRApp+MRApp"></a>

### mrApp.MRApp
**Kind**: instance class of [<code>MRApp</code>](#MRApp)  
<a name="new_MRApp+MRApp_new"></a>

#### new exports.MRApp()
Constructs the base information of the app including system, camera, engine, xr, and rendering defaults.

<a name="MRApp+appWidth"></a>

### mrApp.appWidth() ⇒ <code>number</code>
**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
**Returns**: <code>number</code> - width in 3d or pixel space (depending on if in xr) of the current open app  
<a name="MRApp+appHeight"></a>

### mrApp.appHeight() ⇒ <code>number</code>
**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
**Returns**: <code>number</code> - height in 3d or pixel space (depending on if in xr) of the current open app  
<a name="MRApp+mutatedAttribute"></a>

### mrApp.mutatedAttribute(mutation)
**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | TODO |

<a name="MRApp+mutatedChildList"></a>

### mrApp.mutatedChildList(mutation)
**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | TODO |

<a name="MRApp+mutationCallback"></a>

### mrApp.mutationCallback(mutationList, observer)
The mutationCallback function that runs whenever this entity component should be mutated.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| mutationList | <code>object</code> | the list of update/change/mutation(s) to be handled. |
| observer | <code>object</code> | w3 standard object that watches for changes on the HTMLElement |

<a name="MRApp+init"></a>

### mrApp.init()
Initializes the engine state for the MRApp. This function is run whenever the MRApp is connected.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+initCamera"></a>

### mrApp.initCamera()
Initializes the user information for the MRApp including appropriate HMD direction and camera information and the default scene anchor location.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+initLights"></a>

### mrApp.initLights(data)
Initializes default lighting and shadows for the main scene.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| data | <code>object</code> | the lights data (color, intensity, shadows, etc) |

<a name="MRApp+denit"></a>

### mrApp.denit()
De-initializes rendering and MR

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+registerSystem"></a>

### mrApp.registerSystem(system)
Registers a new system addition to the MRApp engine.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| system | <code>MRSystem</code> | the system to be added. |

<a name="MRApp+unregisterSystem"></a>

### mrApp.unregisterSystem(system)
Unregisters a system from the MRApp engine.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| system | <code>MRSystem</code> | the system to be removed. |

<a name="MRApp+add"></a>

### mrApp.add(entity)
Adding an entity as an object in this MRApp engine's scene.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRApp+removeEntity"></a>

### mrApp.removeEntity(entity)
Removing an entity as an object in this MRApp engine's scene.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="MRApp+onWindowResize"></a>

### mrApp.onWindowResize()
Handles what is necessary rendering, camera, and user-wise when the viewing window is resized.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+render"></a>

### mrApp.render(timeStamp, frame)
Default function header needed by threejs. The render function that is called during ever frame. Calls every systems' update function.

**Kind**: instance method of [<code>MRApp</code>](#MRApp)  

| Param | Type | Description |
| --- | --- | --- |
| timeStamp | <code>number</code> | timeStamp of the current frame. |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRApp.Connected"></a>

### MRApp.Connected()
The connectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: static method of [<code>MRApp</code>](#MRApp)  
<a name="MRApp.Disconnected"></a>

### MRApp.Disconnected()
The disconnectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: static method of [<code>MRApp</code>](#MRApp)  
