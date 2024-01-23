---
description: "Javascript API"
---
# Javascript API


<hr>

<a name="MRElement"></a>

## MRElement ⇐ <code>HTMLElement</code>
The first step in MR.js extending an HTMLElement. Used as a base for both `mr-app` and `mr-entity`.

**Kind**: global class  
**Extends**: <code>HTMLElement</code>  

* [MRElement](#MRElement) ⇐ <code>HTMLElement</code>
    * [.MRElement](#MRElement+MRElement)
        * [new exports.MRElement()](#new_MRElement+MRElement_new)
    * [.add(entity)](#MRElement+add)
    * [.remove(entity)](#MRElement+remove)

<a name="MRElement+MRElement"></a>

### mrElement.MRElement
**Kind**: instance class of [<code>MRElement</code>](#MRElement)  
<a name="new_MRElement+MRElement_new"></a>

#### new exports.MRElement()
Constructs the basic information needed to separate an `MRElement` from an `HTMLElement`.

<a name="MRElement+add"></a>

### mrElement.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRElement</code>](#MRElement)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity to be added. |

<a name="MRElement+remove"></a>

### mrElement.remove(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRElement</code>](#MRElement)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity to be removed. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRElement.js' target='_blank'>Suggest an edit on GitHub for src/core/MRElement.js</a></div>

<hr>

<a name="MRSystem"></a>

## MRSystem
The default representation of an MRSystem to be expanded upon by actual details ECS System items.

**Kind**: global class  

* [MRSystem](#MRSystem)
    * [.MRSystem](#MRSystem+MRSystem)
        * [new exports.MRSystem(useComponents, frameRate)](#new_MRSystem+MRSystem_new)
    * [.alwaysNeedsSystemUpdate()](#MRSystem+alwaysNeedsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#MRSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.needsSystemUpdate()](#MRSystem+needsSystemUpdate)
    * [._update(deltaTime, frame)](#MRSystem+_update)
    * [.update(deltaTime, frame)](#MRSystem+update)
    * [.onNewEntity(entity)](#MRSystem+onNewEntity)
    * [.attachedComponent(entity)](#MRSystem+attachedComponent)
    * [.updatedComponent(entity, oldData)](#MRSystem+updatedComponent)
    * [.detachedComponent(entity)](#MRSystem+detachedComponent)
    * [.onAttach(event)](#MRSystem+onAttach)
    * [.onUpdate(event)](#MRSystem+onUpdate)
    * [.onDetach(event)](#MRSystem+onDetach)

<a name="MRSystem+MRSystem"></a>

### mrSystem.MRSystem
**Kind**: instance class of [<code>MRSystem</code>](#MRSystem)  
<a name="new_MRSystem+MRSystem_new"></a>

#### new exports.MRSystem(useComponents, frameRate)
Constructor for MRSystem. Sets up appropriate document event listeners, component defaults, and system defaults that will be used for system runs ever frame.


| Param | Type | Default | Description |
| --- | --- | --- | --- |
| useComponents | <code>boolean</code> | <code>true</code> | Default to true. Determines whether comonents need to be maintained (attached/updated/detached) with the system. |
| frameRate | <code>number</code> | <code></code> | Default to null. When set, used and updated as part of the System's update function. |

<a name="MRSystem+alwaysNeedsSystemUpdate"></a>

### mrSystem.alwaysNeedsSystemUpdate() ⇒ <code>boolean</code>
Checks if the system is setup to always run instead of being in a state that allows for toggling on and off.
Useful for readability and to not need to check against undefined often.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
**Returns**: <code>boolean</code> - true if the internal _needsSystemUpdate is set to 'undefined', false otherwise.  
<a name="MRSystem+needsSystemUpdate"></a>

### mrSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run the generic system update call. Default implementation returns true if the needsSystemUpdate flag
has been set to true or is in the alwaysNeedsSystemUpdate state. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MRSystem+needsSystemUpdate"></a>

### mrSystem.needsSystemUpdate()
Set the needsSystemUpdate parameter.
undefined - means the system will always update every time the application loops.
true/false - means the system will only run one iteration when set to true and then reset back to false waiting for the next trigger.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
<a name="MRSystem+_update"></a>

### mrSystem.\_update(deltaTime, frame)
The actual system update call.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+update"></a>

### mrSystem.update(deltaTime, frame)
The generic system update call.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+onNewEntity"></a>

### mrSystem.onNewEntity(entity)
Called when a new entity is added to the scene

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="MRSystem+attachedComponent"></a>

### mrSystem.attachedComponent(entity)
Called when the entity component is initialized

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being attached/initialized. |

<a name="MRSystem+updatedComponent"></a>

### mrSystem.updatedComponent(entity, oldData)
Called when a specific entity component is being updated

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |
| oldData | <code>object</code> | the |

<a name="MRSystem+detachedComponent"></a>

### mrSystem.detachedComponent(entity)
Called when the entity component is removed

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity component being removed. |

<a name="MRSystem+onAttach"></a>

### mrSystem.onAttach(event)
Handles the component and registry aspect of the event when an entity component attaches to this system.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the attach event |

<a name="MRSystem+onUpdate"></a>

### mrSystem.onUpdate(event)
Handles the component and registry update of the even when an entity component needs to change.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the update event |

<a name="MRSystem+onDetach"></a>

### mrSystem.onDetach(event)
Handles the component and registry aspect of the even when an entity component detaches from this system.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the detach event |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/MRSystem.js</a></div>

<hr>

<a name="MRTextEntity"></a>

## MRTextEntity ⇐ <code>MRDivEntity</code>
The text element that is used to represent normal HTML text one would expect in a web browser.
           Used specifically on `mr-div` items.
           Inherits from MRDivEntity.

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRTextEntity](#MRTextEntity) ⇐ <code>MRDivEntity</code>
    * [.MRTextEntity](#MRTextEntity+MRTextEntity)
        * [new exports.MRTextEntity()](#new_MRTextEntity+MRTextEntity_new)
    * [.height](#MRTextEntity+height) ⇒ <code>number</code>
    * [.connected()](#MRTextEntity+connected)

<a name="MRTextEntity+MRTextEntity"></a>

### mrTextEntity.MRTextEntity
**Kind**: instance class of [<code>MRTextEntity</code>](#MRTextEntity)  
<a name="new_MRTextEntity+MRTextEntity_new"></a>

#### new exports.MRTextEntity()
Constructor for the MRTextEntity object.
             Sets up the 3D aspect of the text, including the object, texture, and update check.
             Additionally, adds an event listener for the text to auto-augment whenever the panel size changes.

<a name="MRTextEntity+height"></a>

### mrTextEntity.height ⇒ <code>number</code>
Represents the height of the rendering area for the text, counting as the CSS height in pixels.

**Kind**: instance property of [<code>MRTextEntity</code>](#MRTextEntity)  
**Returns**: <code>number</code> - the resolved height  
<a name="MRTextEntity+connected"></a>

### mrTextEntity.connected()
Callback function of MREntity - sets up the textObject of the text item.

**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRTextEntity.js' target='_blank'>Suggest an edit on GitHub for src/core/MRTextEntity.js</a></div>

<hr>

<a name="MRApp"></a>

## MRApp ⇐ <code>MRElement</code>
The engine handler for running MRjs as an App. `mr-app`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MRApp](#MRApp) ⇐ <code>MRElement</code>
    * _instance_
        * [.MRApp](#MRApp+MRApp)
            * [new exports.MRApp()](#new_MRApp+MRApp_new)
        * [.appWidth](#MRApp+appWidth)
        * [.appHeight](#MRApp+appHeight)
        * [.mutatedAttribute(mutation)](#MRApp+mutatedAttribute)
        * [.mutatedChildList(mutation)](#MRApp+mutatedChildList)
        * [.mutationCallback(mutationList, observer)](#MRApp+mutationCallback)
        * [.init()](#MRApp+init)
        * [.initUser()](#MRApp+initUser)
        * [.initLights(data)](#MRApp+initLights)
        * [.denit()](#MRApp+denit)
        * [.registerSystem(system)](#MRApp+registerSystem)
        * [.unregisterSystem(system)](#MRApp+unregisterSystem)
        * [.add(entity)](#MRApp+add)
        * [.remove(entity)](#MRApp+remove)
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

### mrApp.appWidth
**Kind**: instance property of [<code>MRApp</code>](#MRApp)  
<a name="MRApp+appHeight"></a>

### mrApp.appHeight
**Kind**: instance property of [<code>MRApp</code>](#MRApp)  
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
<a name="MRApp+initUser"></a>

### mrApp.initUser()
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

<a name="MRApp+remove"></a>

### mrApp.remove(entity)
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

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRApp.js' target='_blank'>Suggest an edit on GitHub for src/core/MRApp.js</a></div>

<hr>

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
    * [.borderRadii()](#MRDivEntity+borderRadii) ⇒ <code>number</code>
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
**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+borderRadii"></a>

### mrDivEntity.borderRadii() ⇒ <code>number</code>
Calculates the border radius of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRDivEntity+setBorder"></a>

### mrDivEntity.setBorder()
Sets the border of the UI based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  
<a name="MRDivEntity+setBackground"></a>

### mrDivEntity.setBackground()
Sets the background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRDivEntity</code>](#MRDivEntity)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRDivEntity.js' target='_blank'>Suggest an edit on GitHub for src/core/MRDivEntity.js</a></div>

<hr>

<a name="InstancingSystem"></a>

## InstancingSystem ⇐ <code>MRSystem</code>
System that allows for instancing of meshes based on a given entity where the instances can be modified separately.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [InstancingSystem](#InstancingSystem) ⇐ <code>MRSystem</code>
    * [.InstancingSystem](#InstancingSystem+InstancingSystem)
        * [new exports.InstancingSystem()](#new_InstancingSystem+InstancingSystem_new)
    * [.needsSystemUpdate](#InstancingSystem+needsSystemUpdate)
    * [.needsSystemUpdate()](#InstancingSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#InstancingSystem+update)
    * [.attachedComponent(entity)](#InstancingSystem+attachedComponent)
    * [.random(entity)](#InstancingSystem+random)

<a name="InstancingSystem+InstancingSystem"></a>

### instancingSystem.InstancingSystem
**Kind**: instance class of [<code>InstancingSystem</code>](#InstancingSystem)  
<a name="new_InstancingSystem+InstancingSystem_new"></a>

#### new exports.InstancingSystem()
InstancingSystem's default constructor that sets up default instancing count, transformations, and mesh information.

<a name="InstancingSystem+needsSystemUpdate"></a>

### instancingSystem.needsSystemUpdate
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance property of [<code>InstancingSystem</code>](#InstancingSystem)  
<a name="InstancingSystem+needsSystemUpdate"></a>

### instancingSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="InstancingSystem+update"></a>

### instancingSystem.update(deltaTime, frame)
The generic system update call. Updates the entity and its instances to their appropriate transformations and visuals
              based on the picked predefined option.

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="InstancingSystem+attachedComponent"></a>

### instancingSystem.attachedComponent(entity)
Determines what meshes are attached from this entity and When a component is attached.
Setups up instancing based on the predefined setup option and the entity's geometry (handling properly whether that be a group or mesh).

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity with the geometry to be instanced and the chosen setup option |

<a name="InstancingSystem+random"></a>

### instancingSystem.random(entity)
An option for default instancing. Places the given entity instancing it at a bunch of random transformation locations.Uses threejs's `InstancedMesh`.

**Kind**: instance method of [<code>InstancingSystem</code>](#InstancingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be instanced in random locations |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/InstancingSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/InstancingSystem.js</a></div>

<hr>

<a name="AudioSystem"></a>

## AudioSystem ⇐ <code>MRSystem</code>
This system manages spatial audio in the THREE.js scene.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AudioSystem](#AudioSystem) ⇐ <code>MRSystem</code>
    * [.AudioSystem](#AudioSystem+AudioSystem)
        * [new exports.AudioSystem()](#new_AudioSystem+AudioSystem_new)
    * [.update(dt, frame)](#AudioSystem+update)
    * [.attachedComponent(entity)](#AudioSystem+attachedComponent)
    * [.updatedComponent(entity)](#AudioSystem+updatedComponent)
    * [.detachedComponent(entity)](#AudioSystem+detachedComponent)
    * [.setAudioState(entity, state)](#AudioSystem+setAudioState)

<a name="AudioSystem+AudioSystem"></a>

### audioSystem.AudioSystem
**Kind**: instance class of [<code>AudioSystem</code>](#AudioSystem)  
<a name="new_AudioSystem+AudioSystem_new"></a>

#### new exports.AudioSystem()
AudioSystem's Default constructor that sets up the audio listener and loader

<a name="AudioSystem+update"></a>

### audioSystem.update(dt, frame)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| dt | 
| frame | 

<a name="AudioSystem+attachedComponent"></a>

### audioSystem.attachedComponent(entity)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 

<a name="AudioSystem+updatedComponent"></a>

### audioSystem.updatedComponent(entity)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 

<a name="AudioSystem+detachedComponent"></a>

### audioSystem.detachedComponent(entity)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 

<a name="AudioSystem+setAudioState"></a>

### audioSystem.setAudioState(entity, state)
**Kind**: instance method of [<code>AudioSystem</code>](#AudioSystem)  

| Param |
| --- |
| entity | 
| state | 


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/AudioSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/AudioSystem.js</a></div>

<hr>

<a name="PhysicsSystem"></a>

## PhysicsSystem ⇐ <code>MRSystem</code>
The physics system functions differently from other systems,
Rather than attaching components, physical properties such as
shape, body, mass, etc are definied as attributes.
if shape and body are not defined, they default to the geometry
of the entity, if there is no geometry, there is no physics defined
on the entity.

Alternatively, you can also expressly attach a comp-physics
attribute for more detailed control.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [PhysicsSystem](#PhysicsSystem) ⇐ <code>MRSystem</code>
    * [.PhysicsSystem](#PhysicsSystem+PhysicsSystem)
        * [new exports.PhysicsSystem()](#new_PhysicsSystem+PhysicsSystem_new)
    * [.update(deltaTime, frame)](#PhysicsSystem+update)
    * [.onContactStart(handle1, handle2)](#PhysicsSystem+onContactStart)
    * [.onContactEnd(handle1, handle2)](#PhysicsSystem+onContactEnd)
    * [.touchStart(collider1, collider2, entity)](#PhysicsSystem+touchStart)
    * [.touchEnd(entity)](#PhysicsSystem+touchEnd)
    * [.hoverStart(collider1, collider2, entity)](#PhysicsSystem+hoverStart)
    * [.hoverEnd(entity)](#PhysicsSystem+hoverEnd)
    * [.onNewEntity(entity)](#PhysicsSystem+onNewEntity)
    * [.initPhysicsBody(entity)](#PhysicsSystem+initPhysicsBody)
    * [.updateBody(entity)](#PhysicsSystem+updateBody)
    * [.initColliderDesc(physicsData)](#PhysicsSystem+initColliderDesc) ⇒ <code>object</code>
    * [.updateCollider(entity)](#PhysicsSystem+updateCollider)
    * [.updateDebugRenderer()](#PhysicsSystem+updateDebugRenderer)

<a name="PhysicsSystem+PhysicsSystem"></a>

### physicsSystem.PhysicsSystem
**Kind**: instance class of [<code>PhysicsSystem</code>](#PhysicsSystem)  
<a name="new_PhysicsSystem+PhysicsSystem_new"></a>

#### new exports.PhysicsSystem()
PhysicsSystem's default constructor - sets up useful world and debug information alongside an initial `Rapier` event queue.

<a name="PhysicsSystem+update"></a>

### physicsSystem.update(deltaTime, frame)
The generic system update call. Based on the captured physics events for the frame, handles all items appropriately.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="PhysicsSystem+onContactStart"></a>

### physicsSystem.onContactStart(handle1, handle2)
Handles the start of collisions between two different colliders.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| handle1 | <code>number</code> | the first collider |
| handle2 | <code>number</code> | the second collider |

<a name="PhysicsSystem+onContactEnd"></a>

### physicsSystem.onContactEnd(handle1, handle2)
Handles the end of collisions between two different colliders.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| handle1 | <code>number</code> | the first collider |
| handle2 | <code>number</code> | the second collider |

<a name="PhysicsSystem+touchStart"></a>

### physicsSystem.touchStart(collider1, collider2, entity)
Handles the start of touch between two different colliders and the current entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| collider1 | <code>number</code> | the first collider |
| collider2 | <code>number</code> | the second collider |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+touchEnd"></a>

### physicsSystem.touchEnd(entity)
Handles the end of touch for the current entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+hoverStart"></a>

### physicsSystem.hoverStart(collider1, collider2, entity)
Handles the start of hovering over/around a specific entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| collider1 | <code>number</code> | the first collider |
| collider2 | <code>number</code> | the second collider |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+hoverEnd"></a>

### physicsSystem.hoverEnd(entity)
Handles the end of hovering over/around a specific entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the current entity |

<a name="PhysicsSystem+onNewEntity"></a>

### physicsSystem.onNewEntity(entity)
When a new entity is created, adds it to the physics registry and initializes the physics aspects of the entity.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being set up |

<a name="PhysicsSystem+initPhysicsBody"></a>

### physicsSystem.initPhysicsBody(entity)
Initializes the rigid body used by the physics part of the entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateBody"></a>

### physicsSystem.updateBody(entity)
Updates the rigid body used by the physics part of the entity

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+initColliderDesc"></a>

### physicsSystem.initColliderDesc(physicsData) ⇒ <code>object</code>
Initializes a collider based on the physics data.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  
**Returns**: <code>object</code> - - the Rapier physics collider object  

| Param | Type | Description |
| --- | --- | --- |
| physicsData | <code>object</code> | data needed to be used to setup the collider interaction |

<a name="PhysicsSystem+updateCollider"></a>

### physicsSystem.updateCollider(entity)
Updates the collider used by the entity based on whether it's being used as a UI element, the main box element, etc.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated |

<a name="PhysicsSystem+updateDebugRenderer"></a>

### physicsSystem.updateDebugRenderer()
Updates the debug renderer to either be on or off based on the 'this.debug' variable. Handles the drawing of the visual lines.

**Kind**: instance method of [<code>PhysicsSystem</code>](#PhysicsSystem)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/PhysicsSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/PhysicsSystem.js</a></div>

<hr>

<a name="MaskingSystem"></a>

## MaskingSystem ⇐ <code>MRSystem</code>
Handles specific needs for setting up the masking for all necessary items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [MaskingSystem](#MaskingSystem) ⇐ <code>MRSystem</code>
    * [.MaskingSystem](#MaskingSystem+MaskingSystem)
        * [new exports.MaskingSystem()](#new_MaskingSystem+MaskingSystem_new)
    * [.needsSystemUpdate](#MaskingSystem+needsSystemUpdate)
    * [.needsSystemUpdate()](#MaskingSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#MaskingSystem+update)
    * [.onNewEntity(entity)](#MaskingSystem+onNewEntity)

<a name="MaskingSystem+MaskingSystem"></a>

### maskingSystem.MaskingSystem
**Kind**: instance class of [<code>MaskingSystem</code>](#MaskingSystem)  
<a name="new_MaskingSystem+MaskingSystem_new"></a>

#### new exports.MaskingSystem()
MaskingSystem's default constructor.

<a name="MaskingSystem+needsSystemUpdate"></a>

### maskingSystem.needsSystemUpdate
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance property of [<code>MaskingSystem</code>](#MaskingSystem)  
<a name="MaskingSystem+needsSystemUpdate"></a>

### maskingSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MaskingSystem+update"></a>

### maskingSystem.update(deltaTime, frame)
...

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MaskingSystem+onNewEntity"></a>

### maskingSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Handles masking elements to their panel.

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/MaskingSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/MaskingSystem.js</a></div>

<hr>

<a name="ClippingSystem"></a>

## ClippingSystem ⇐ <code>MRSystem</code>
This system supports 3D clipping following threejs's clipping planes setup.
             See https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes for more information.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [ClippingSystem](#ClippingSystem) ⇐ <code>MRSystem</code>
    * [.ClippingSystem](#ClippingSystem+ClippingSystem)
        * [new exports.ClippingSystem()](#new_ClippingSystem+ClippingSystem_new)
    * [.needsSystemUpdate](#ClippingSystem+needsSystemUpdate)
    * [.needsSystemUpdate()](#ClippingSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#ClippingSystem+update)
    * [.updatePlanes(entity)](#ClippingSystem+updatePlanes)
    * [.applyClipping(object, clipping)](#ClippingSystem+applyClipping)
    * [.addClippingPlanes(entity)](#ClippingSystem+addClippingPlanes)
    * [.onNewEntity(entity)](#ClippingSystem+onNewEntity)

<a name="ClippingSystem+ClippingSystem"></a>

### clippingSystem.ClippingSystem
**Kind**: instance class of [<code>ClippingSystem</code>](#ClippingSystem)  
<a name="new_ClippingSystem+ClippingSystem_new"></a>

#### new exports.ClippingSystem()
ClippingSystem's default constructor that sets up coplanar points and the default clipping information.

<a name="ClippingSystem+needsSystemUpdate"></a>

### clippingSystem.needsSystemUpdate
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance property of [<code>ClippingSystem</code>](#ClippingSystem)  
<a name="ClippingSystem+needsSystemUpdate"></a>

### clippingSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="ClippingSystem+update"></a>

### clippingSystem.update(deltaTime, frame)
The generic system update call. Updates the clipped view of every entity in this system's registry.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="ClippingSystem+updatePlanes"></a>

### clippingSystem.updatePlanes(entity)
Updates the stored clipping planes to be based on the passed in entity.

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | given entity that will be used to create the clipping planes positioning. |

<a name="ClippingSystem+applyClipping"></a>

### clippingSystem.applyClipping(object, clipping)
Helper method for `onNewEntity`. Actually applies the clipping planes to the material setup for rendering.
Uses threejs in the background following https://threejs.org/docs/?q=material#api/en/materials/Material.clippingPlanes

**Kind**: instance method of [<code>ClippingSystem</code>](#ClippingSystem)  

| Param | Type | Description |
| --- | --- | --- |
| object | <code>object</code> | the object3D item to be clipped |
| clipping | <code>MRClippingGeometry</code> | the clipping information to be passed to the material |

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


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/ClippingSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/ClippingSystem.js</a></div>

<hr>

<a name="TextSystem"></a>

## TextSystem ⇐ <code>MRSystem</code>
Handles text creation and font rendering for `mr-text`, `mr-textfield`, and `mr-textarea` with a starting framerate of 1/30.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [TextSystem](#TextSystem) ⇐ <code>MRSystem</code>
    * [.TextSystem](#TextSystem+TextSystem)
        * [new exports.TextSystem()](#new_TextSystem+TextSystem_new)
    * [.needsSystemUpdate](#TextSystem+needsSystemUpdate)
    * [.onNewEntity(entity)](#TextSystem+onNewEntity)
    * [.needsSystemUpdate()](#TextSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#TextSystem+update)
    * [.updateStyle(entity)](#TextSystem+updateStyle)
    * [.addText(entity)](#TextSystem+addText)
    * [.parseFontWeight(weight)](#TextSystem+parseFontWeight) ⇒ <code>string</code>
    * [.parseFontSize(val, el)](#TextSystem+parseFontSize) ⇒ <code>number</code>
    * [.getVerticalAlign(verticalAlign, entity)](#TextSystem+getVerticalAlign) ⇒ <code>string</code>
    * [.getLineHeight(lineHeight, entity)](#TextSystem+getLineHeight) ⇒ <code>number</code>
    * [.getTextAlign(textAlign)](#TextSystem+getTextAlign) ⇒ <code>string</code>
    * [.setColor(textObj, color)](#TextSystem+setColor)
    * [.parseFontFace(cssString)](#TextSystem+parseFontFace) ⇒ <code>object</code>

<a name="TextSystem+TextSystem"></a>

### textSystem.TextSystem
**Kind**: instance class of [<code>TextSystem</code>](#TextSystem)  
<a name="new_TextSystem+TextSystem_new"></a>

#### new exports.TextSystem()
TextSystem's default constructor

<a name="TextSystem+needsSystemUpdate"></a>

### textSystem.needsSystemUpdate
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance property of [<code>TextSystem</code>](#TextSystem)  
<a name="TextSystem+onNewEntity"></a>

### textSystem.onNewEntity(entity)
When a new entity is created, adds it to the physics registry and initializes the physics aspects of the entity.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being set up |

<a name="TextSystem+needsSystemUpdate"></a>

### textSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="TextSystem+update"></a>

### textSystem.update(deltaTime, frame)
The generic system update call for all text items including updates for style and cleaning of content for special characters.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="TextSystem+updateStyle"></a>

### textSystem.updateStyle(entity)
Updates the style for the text's information based on compStyle and inputted css elements.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MRTextEntity</code> | the text entity whose style is being updated |

<a name="TextSystem+addText"></a>

### textSystem.addText(entity)
Handles when text is added as an entity updating content and style for the internal textObj appropriately.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MRTextEntity</code> | the text entity being updated |

<a name="TextSystem+parseFontWeight"></a>

### textSystem.parseFontWeight(weight) ⇒ <code>string</code>
parses the font weight as 'bold', 'normal', etc based on the given weight value

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>string</code> - - the enum of 'bold', 'normal', etc  

| Param | Type | Description |
| --- | --- | --- |
| weight | <code>number</code> | the numerical representation of the font-weight |

<a name="TextSystem+parseFontSize"></a>

### textSystem.parseFontSize(val, el) ⇒ <code>number</code>
parses the font size based on its `XXpx` value and converts it to a usable result based on the virtual display resolution

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>number</code> - - the font size adjusted for the display as expected  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | the value being adjusted |
| el | <code>object</code> | the css element handler |

<a name="TextSystem+getVerticalAlign"></a>

### textSystem.getVerticalAlign(verticalAlign, entity) ⇒ <code>string</code>
Gets the vertical align

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>string</code> - - the string representation of the the verticalAlign  

| Param | Type | Description |
| --- | --- | --- |
| verticalAlign | <code>number</code> | the numerical representation in pixel space of the vertical Align |
| entity | <code>MREntity</code> | the entity whose comp style (css) is relevant |

<a name="TextSystem+getLineHeight"></a>

### textSystem.getLineHeight(lineHeight, entity) ⇒ <code>number</code>
Gets the line height

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>number</code> - - the numerical representation of the the lineHeight  

| Param | Type | Description |
| --- | --- | --- |
| lineHeight | <code>number</code> | the numerical representation in pixel space of the line height |
| entity | <code>MREntity</code> | the entity whose comp style (css) is relevant |

<a name="TextSystem+getTextAlign"></a>

### textSystem.getTextAlign(textAlign) ⇒ <code>string</code>
Gets the text alignment string

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>string</code> - - the resolved `textAlign`.  

| Param | Type | Description |
| --- | --- | --- |
| textAlign | <code>string</code> | handles values for `start`, `end`, `left`, and `right`; otherwise, defaults to the same input as `textAlign`. |

<a name="TextSystem+setColor"></a>

### textSystem.setColor(textObj, color)
Sets the matrial color and opacity based on the css color element

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| textObj | <code>object</code> | the textObj whose color is being updated |
| color | <code>object</code> | the representation of color as `rgba(xxx,xxx,xxx)` or as `#xxx` |

<a name="TextSystem+parseFontFace"></a>

### textSystem.parseFontFace(cssString) ⇒ <code>object</code>
Based on the given font-face value in the passed cssString, tries to either use by default or download the requested font-face
             for use by the text object.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>object</code> - - json object respresenting the preloaded font-face  

| Param | Type | Description |
| --- | --- | --- |
| cssString | <code>string</code> | the css string to be parsed for the font-face css value. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/TextSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/TextSystem.js</a></div>

<hr>

<a name="LayoutSystem"></a>

## LayoutSystem ⇐ <code>MRSystem</code>
System that allows for setup and handling of changing layout.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [LayoutSystem](#LayoutSystem) ⇐ <code>MRSystem</code>
    * [.LayoutSystem](#LayoutSystem+LayoutSystem)
        * [new exports.LayoutSystem()](#new_LayoutSystem+LayoutSystem_new)
    * [.needsSystemUpdate](#LayoutSystem+needsSystemUpdate)
    * [.onNewEntity(entity)](#LayoutSystem+onNewEntity)
    * [.needsSystemUpdate()](#LayoutSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#LayoutSystem+update)
    * [.setLayoutPosition(entity)](#LayoutSystem+setLayoutPosition)

<a name="LayoutSystem+LayoutSystem"></a>

### layoutSystem.LayoutSystem
**Kind**: instance class of [<code>LayoutSystem</code>](#LayoutSystem)  
<a name="new_LayoutSystem+LayoutSystem_new"></a>

#### new exports.LayoutSystem()
Constructor for the layout system. Uses the default System setup.

<a name="LayoutSystem+needsSystemUpdate"></a>

### layoutSystem.needsSystemUpdate
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance property of [<code>LayoutSystem</code>](#LayoutSystem)  
<a name="LayoutSystem+onNewEntity"></a>

### layoutSystem.onNewEntity(entity)
Called when a new entity is added to this system

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |

<a name="LayoutSystem+needsSystemUpdate"></a>

### layoutSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="LayoutSystem+update"></a>

### layoutSystem.update(deltaTime, frame)
The generic system update call. Handles updating all 3D items to match whatever layout position is expected.

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="LayoutSystem+setLayoutPosition"></a>

### layoutSystem.setLayoutPosition(entity)
Helper function for the update call. Sets the entity's appropriate 3D layout position based on window and entity expectations.

**Kind**: instance method of [<code>LayoutSystem</code>](#LayoutSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being updated. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/LayoutSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/LayoutSystem.js</a></div>

<hr>

<a name="AnimationSystem"></a>

## AnimationSystem ⇐ <code>MRSystem</code>
Handles specific needs for setting up the masking for all necessary items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AnimationSystem](#AnimationSystem) ⇐ <code>MRSystem</code>
    * [.AnimationSystem](#AnimationSystem+AnimationSystem)
        * [new exports.AnimationSystem()](#new_AnimationSystem+AnimationSystem_new)
    * [.needsSystemUpdate](#AnimationSystem+needsSystemUpdate)
    * [.needsSystemUpdate()](#AnimationSystem+needsSystemUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#AnimationSystem+update)
    * [.onNewEntity(entity)](#AnimationSystem+onNewEntity)

<a name="AnimationSystem+AnimationSystem"></a>

### animationSystem.AnimationSystem
**Kind**: instance class of [<code>AnimationSystem</code>](#AnimationSystem)  
<a name="new_AnimationSystem+AnimationSystem_new"></a>

#### new exports.AnimationSystem()
AnimationSystem's default constructor.

<a name="AnimationSystem+needsSystemUpdate"></a>

### animationSystem.needsSystemUpdate
Since this class overrides the default `get` for the `needsSystemUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance property of [<code>AnimationSystem</code>](#AnimationSystem)  
<a name="AnimationSystem+needsSystemUpdate"></a>

### animationSystem.needsSystemUpdate() ⇒ <code>boolean</code>
Getter to checks if we need to run this system's update call. Overridden implementation returns true if there are any items in this
systems registry that need to be run AND the default systemUpdateCheck is true
(see [MRSystem.needsSystemUpdate](https://docs.mrjs.io/javascript-api/#mrsystem.needssystemupdate) for default).

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="AnimationSystem+update"></a>

### animationSystem.update(deltaTime, frame)
Updates each animation mixer in the registry. This function should be called
     within the main animation loop of the application. It iterates through all the
     animation mixers stored in the registry and updates them with the given deltaTime.
     The deltaTime parameter is typically the time elapsed since the last frame
     which is used to ensure smooth animation playback.

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | The time elapsed since the last update call, used to update the animation mixers. |
| frame | <code>object</code> | Additional frame information, not used in the current implementation but can be utilized for future enhancements. |

<a name="AnimationSystem+onNewEntity"></a>

### animationSystem.onNewEntity(entity)
Called when a new entity is added to the scene. Handles masking elements to their panel.

**Kind**: instance method of [<code>AnimationSystem</code>](#AnimationSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being added. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/AnimationSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/AnimationSystem.js</a></div>

<hr>

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


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/ControlSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/ControlSystem.js</a></div>

<hr>

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


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/AnchorSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/AnchorSystem.js</a></div>

<hr>

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


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/StyleSystem.js' target='_blank'>Suggest an edit on GitHub for src/core/componentSystems/StyleSystem.js</a></div>

<hr>


<hr>

<a name="MRImage"></a>

## MRImage ⇐ <code>MRDivEntity</code>
Base html image represented in 3D space. `mr-image`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRImage](#MRImage) ⇐ <code>MRDivEntity</code>
    * [.MRImage](#MRImage+MRImage)
        * [new exports.MRImage()](#new_MRImage+MRImage_new)
    * [.needsStyleUpdate](#MRImage+needsStyleUpdate)
    * [.width()](#MRImage+width) ⇒ <code>number</code>
    * [.height()](#MRImage+height) ⇒ <code>number</code>
    * [.connected()](#MRImage+connected)
    * [.needsStyleUpdate()](#MRImage+needsStyleUpdate) ⇒ <code>boolean</code>
    * [.updateStyle()](#MRImage+updateStyle)
    * [.mutated(mutation)](#MRImage+mutated)
    * [.computeObjectFitDimensions()](#MRImage+computeObjectFitDimensions)
    * [.cover(texture, aspect)](#MRImage+cover)

<a name="MRImage+MRImage"></a>

### mrImage.MRImage
**Kind**: instance class of [<code>MRImage</code>](#MRImage)  
<a name="new_MRImage+MRImage_new"></a>

#### new exports.MRImage()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="MRImage+needsStyleUpdate"></a>

### mrImage.needsStyleUpdate
Since this class overrides the default `get` for the `needsStyleUpdate` call, the `set` pair is needed for javascript to be happy.
Relies on the parent's implementation. (see [MREntity.needsStyleUpdate](https://docs.mrjs.io/javascript-api/#mrentity.needsstyleupdate) for default).

**Kind**: instance property of [<code>MRImage</code>](#MRImage)  
<a name="MRImage+width"></a>

### mrImage.width() ⇒ <code>number</code>
Calculates the width of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MRImage+height"></a>

### mrImage.height() ⇒ <code>number</code>
Calculates the height of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRImage+connected"></a>

### mrImage.connected()
Callback function of MREntity - handles setting up this Image and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
<a name="MRImage+needsStyleUpdate"></a>

### mrImage.needsStyleUpdate() ⇒ <code>boolean</code>
Getter to checks if we need the StyleSystem to run on this entity during the current iteration.
This returns true if the width/height/borderradii of the image has changed or if the default implementation for the style update check returns true.
(see [MREntity.needsStyleUpdate](https://docs.mrjs.io/javascript-api/#mrentity.needsstyleupdate) for default).

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
**Returns**: <code>boolean</code> - true if the system is in a state where this system is needed to update, false otherwise  
<a name="MRImage+updateStyle"></a>

### mrImage.updateStyle()
Calls MRDivEntity's updateStyle implemnetation first then uses this version. Updates the style for the Image's border and background
based on compStyle and inputted css elements.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
<a name="MRImage+mutated"></a>

### mrImage.mutated(mutation)
Callback function of MREntity - Updates the image's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MRImage+computeObjectFitDimensions"></a>

### mrImage.computeObjectFitDimensions()
computes the width and height values considering the value of object-fit

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  
<a name="MRImage+cover"></a>

### mrImage.cover(texture, aspect)
Calculates the texture UV transformation change based on the image's aspect ratio.

**Kind**: instance method of [<code>MRImage</code>](#MRImage)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>object</code> | the texture to augment |
| aspect | <code>number</code> | a given expected aspect ratio |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRImage.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRImage.js</a></div>

<hr>

<a name="MRPanel"></a>

## MRPanel ⇐ <code>MRDivEntity</code>
The main panel entity DOM used for webpages and UI elements in 3D space. `mr-panel`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRPanel](#MRPanel) ⇐ <code>MRDivEntity</code>
    * [.MRPanel](#MRPanel+MRPanel)
        * [new exports.MRPanel()](#new_MRPanel+MRPanel_new)
    * [.height()](#MRPanel+height) ⇒ <code>number</code>
    * [.connected()](#MRPanel+connected)
    * [.add(entity)](#MRPanel+add)
    * [.remove(entity)](#MRPanel+remove)
    * [.onTouch(event)](#MRPanel+onTouch)
    * [.momentumScroll(distance, duration)](#MRPanel+momentumScroll)
    * [.onScroll(event)](#MRPanel+onScroll)

<a name="MRPanel+MRPanel"></a>

### mrPanel.MRPanel
**Kind**: instance class of [<code>MRPanel</code>](#MRPanel)  
<a name="new_MRPanel+MRPanel_new"></a>

#### new exports.MRPanel()
Constructor for the main Panel. Sets up all the relevant object3D and window information. Includes information necessary for proper scrolling usage.

<a name="MRPanel+height"></a>

### mrPanel.height() ⇒ <code>number</code>
Calculates the height of the Entity. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MRPanel+connected"></a>

### mrPanel.connected()
Callback function of MREntity - handles setting up this Panel once it is connected to run as an entity component.
             Relevant tasks include setting up clipping and setting up for all necessary dispatchEvent connections including mutations and scrolling.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  
<a name="MRPanel+add"></a>

### mrPanel.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be added. |

<a name="MRPanel+remove"></a>

### mrPanel.remove(entity)
Remove an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity to be removed. |

<a name="MRPanel+onTouch"></a>

### mrPanel.onTouch(event)
Handles what should happen when a touch event is called. Updates items appropriately for scrolling on the panel.
             Triggers to use the browser's own scrolling without a need to fake the scrolling itself.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="MRPanel+momentumScroll"></a>

### mrPanel.momentumScroll(distance, duration)
Helper function for the onTouch event function. Handles properly adjusting scroll for some momentum for a more natural feel.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| distance | <code>number</code> | the distance left to scroll |
| duration | <code>number</code> | the amount of time to do the scroll distance allowing for some movement instead of instant displacement. |

<a name="MRPanel+onScroll"></a>

### mrPanel.onScroll(event)
Handles what should happen when a scroll event is called. Updates items appropriately for scrolling on the panel.

**Kind**: instance method of [<code>MRPanel</code>](#MRPanel)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRPanel.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRPanel.js</a></div>

<hr>

<a name="MRSkyBox"></a>

## MRSkyBox ⇐ <code>MREntity</code>
The skybox entity that allows users to give multiple images to pattern into the 3D background space. `mr-skybox`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRSkyBox](#MRSkyBox) ⇐ <code>MREntity</code>
    * [.MRSkyBox](#MRSkyBox+MRSkyBox)
        * [new exports.MRSkyBox()](#new_MRSkyBox+MRSkyBox_new)
    * [.onTextureLoaded(texture)](#MRSkyBox+onTextureLoaded)
    * [.connected()](#MRSkyBox+connected)
    * [.onLoad()](#MRSkyBox+onLoad)

<a name="MRSkyBox+MRSkyBox"></a>

### mrSkyBox.MRSkyBox
**Kind**: instance class of [<code>MRSkyBox</code>](#MRSkyBox)  
<a name="new_MRSkyBox+MRSkyBox_new"></a>

#### new exports.MRSkyBox()
Constructor for skybox - defaults to the usual impl of an Entity.

<a name="MRSkyBox+onTextureLoaded"></a>

### mrSkyBox.onTextureLoaded(texture)
Callback function triggered when the texture is successfully loaded.
             It sets the loaded texture as the background and notifies all registered callbacks.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>THREE.Texture</code> | The loaded texture. |

<a name="MRSkyBox+connected"></a>

### mrSkyBox.connected()
Lifecycle method that is called when the entity is connected.
             This method initializes and starts the texture loading process.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  
<a name="MRSkyBox+onLoad"></a>

### mrSkyBox.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>MRSkyBox</code>](#MRSkyBox)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRSkyBox.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRSkyBox.js</a></div>

<hr>

<a name="MRTextArea"></a>

## MRTextArea ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal paragraph user-entry text field items one would expect in a web-browser. `mr-textarea`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextArea](#MRTextArea) ⇐ <code>MRTextEntity</code>
    * [.MRTextArea](#MRTextArea+MRTextArea)
        * [new exports.MRTextArea()](#new_MRTextArea+MRTextArea_new)
    * [.connected()](#MRTextArea+connected)
    * [.blur()](#MRTextArea+blur)
    * [.focus()](#MRTextArea+focus)
    * [.updateCursorPosition()](#MRTextArea+updateCursorPosition)

<a name="MRTextArea+MRTextArea"></a>

### mrTextArea.MRTextArea
**Kind**: instance class of [<code>MRTextArea</code>](#MRTextArea)  
<a name="new_MRTextArea+MRTextArea_new"></a>

#### new exports.MRTextArea()
Constructor for the textArea entity component.

<a name="MRTextArea+connected"></a>

### mrTextArea.connected()
Callback function of MREntity - handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<a name="MRTextArea+blur"></a>

### mrTextArea.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<a name="MRTextArea+focus"></a>

### mrTextArea.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<a name="MRTextArea+updateCursorPosition"></a>

### mrTextArea.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextArea.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRTextArea.js</a></div>

<hr>

<a name="MRTextField"></a>

## MRTextField ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal user-entry text field items one would expect in a web-browser. Limits the one-line. `mr-textfield`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextField](#MRTextField) ⇐ <code>MRTextEntity</code>
    * [.MRTextField](#MRTextField+MRTextField)
        * [new exports.MRTextField()](#new_MRTextField+MRTextField_new)
    * [.connected()](#MRTextField+connected)
    * [.blur()](#MRTextField+blur)
    * [.focus()](#MRTextField+focus)
    * [.updateCursorPosition()](#MRTextField+updateCursorPosition)

<a name="MRTextField+MRTextField"></a>

### mrTextField.MRTextField
**Kind**: instance class of [<code>MRTextField</code>](#MRTextField)  
<a name="new_MRTextField+MRTextField_new"></a>

#### new exports.MRTextField()
Constructor for the textField entity component.

<a name="MRTextField+connected"></a>

### mrTextField.connected()
Callback function of MREntity - handles setting up this textfield once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<a name="MRTextField+blur"></a>

### mrTextField.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<a name="MRTextField+focus"></a>

### mrTextField.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<a name="MRTextField+updateCursorPosition"></a>

### mrTextField.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextField.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRTextField.js</a></div>

<hr>

<a name="MRModel"></a>

## MRModel ⇐ <code>MREntity</code>
Loads in any supported 3D model type to the requested location. `mr-model`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRModel](#MRModel) ⇐ <code>MREntity</code>
    * [.MRModel](#MRModel+MRModel)
        * [new exports.MRModel()](#new_MRModel+MRModel_new)
    * [.src()](#MRModel+src) ⇒ <code>string</code>
    * [.src()](#MRModel+src)
    * [.loadModel()](#MRModel+loadModel)
    * [.connected()](#MRModel+connected)
    * [.onLoad()](#MRModel+onLoad)

<a name="MRModel+MRModel"></a>

### mrModel.MRModel
**Kind**: instance class of [<code>MRModel</code>](#MRModel)  
<a name="new_MRModel+MRModel_new"></a>

#### new exports.MRModel()
Constructor for the Model entity, does the default.

<a name="MRModel+src"></a>

### mrModel.src() ⇒ <code>string</code>
Pair getter for the src property of <mr-model>. Important so that when a user tries
to run modelObject.src = `...` or perform something on modelObject.src it properly gets the html
attribute as expected instead of the pure js one.

note: we can do this because only htmlimageelement has a `src` property by default, not htmlimagelement,
and none of the above class extensions for Model have it as a defined property.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
**Returns**: <code>string</code> - the value of the src html attribute  
<a name="MRModel+src"></a>

### mrModel.src()
Setter for the src property of <mr-model>. Important so that when a user tries
to run modelObject.src = `...` it properly sets the html attribute as expected instead of the
pure js one.

note: we can do this because only htmlimageelement has a `src` property by default, not htmlimagelement,
and none of the above class extensions for Model have it as a defined property.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<a name="MRModel+loadModel"></a>

### mrModel.loadModel()
Async function that fills in this Model object based on src file information

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<a name="MRModel+connected"></a>

### mrModel.connected()
Callback function of MREntity - handles setting up this Model once it is connected to run as an entity component.
Includes loading up the model and associated data.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<a name="MRModel+onLoad"></a>

### mrModel.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRModel.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRModel.js</a></div>

<hr>

<a name="MRButton"></a>

## MRButton ⇐ <code>MRTextEntity</code>
3D representation of a Button mimicking the html version. `mr-button`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRButton](#MRButton) ⇐ <code>MRTextEntity</code>
    * [.MRButton](#MRButton+MRButton)
        * [new exports.MRButton()](#new_MRButton+MRButton_new)

<a name="MRButton+MRButton"></a>

### mrButton.MRButton
**Kind**: instance class of [<code>MRButton</code>](#MRButton)  
<a name="new_MRButton+MRButton_new"></a>

#### new exports.MRButton()
Constructor for the Button entity, does the default.


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRButton.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRButton.js</a></div>

<hr>

## Classes

<dl>
<dt><a href="#MRHyperlink">MRHyperlink</a> ⇐ <code>MRTextEntity</code></dt>
<dd><p>3D representation of a hyperlink. <code>mr-a</code></p>
</dd>
</dl>

## Functions

<dl>
<dt><a href="#connected">connected()</a></dt>
<dd></dd>
</dl>

<a name="MRHyperlink"></a>

## MRHyperlink ⇐ <code>MRTextEntity</code>
3D representation of a hyperlink. `mr-a`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  
<a name="connected"></a>

## connected()
**Kind**: global function  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRHyperlink.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRHyperlink.js</a></div>

<hr>

<a name="MRLight"></a>

## MRLight ⇐ <code>MREntity</code>
Represents lights in 3D space. `mr-light`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRLight](#MRLight) ⇐ <code>MREntity</code>
    * [.MRLight](#MRLight+MRLight)
        * [new exports.MRLight()](#new_MRLight+MRLight_new)
    * [.connected()](#MRLight+connected)
    * [.mutated(mutation)](#MRLight+mutated)

<a name="MRLight+MRLight"></a>

### mrLight.MRLight
**Kind**: instance class of [<code>MRLight</code>](#MRLight)  
<a name="new_MRLight+MRLight_new"></a>

#### new exports.MRLight()
Constructs the base 3D object.

<a name="MRLight+connected"></a>

### mrLight.connected()
Callback function of MREntity - handles setting up this Light once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRLight</code>](#MRLight)  
<a name="MRLight+mutated"></a>

### mrLight.mutated(mutation)
Callback function of MREntity - Updates the lights color and intensity as requested.

**Kind**: instance method of [<code>MRLight</code>](#MRLight)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRLight.js' target='_blank'>Suggest an edit on GitHub for src/core/entities/MRLight.js</a></div>

<hr>

<a name="MRPlane"></a>

## MRPlane
a name space representation of an MR Plane

**Kind**: global class  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/dataTypes/MRPlane.js' target='_blank'>Suggest an edit on GitHub for src/dataTypes/MRPlane.js</a></div>

<hr>

<a name="MRClippingGeometry"></a>

## MRClippingGeometry
Geometry used in the clipping plane step. Separated out for clarity in the calculations.

**Kind**: global class  

* [MRClippingGeometry](#MRClippingGeometry)
    * [.MRClippingGeometry](#MRClippingGeometry+MRClippingGeometry)
        * [new exports.MRClippingGeometry(geometry)](#new_MRClippingGeometry+MRClippingGeometry_new)

<a name="MRClippingGeometry+MRClippingGeometry"></a>

### mrClippingGeometry.MRClippingGeometry
**Kind**: instance class of [<code>MRClippingGeometry</code>](#MRClippingGeometry)  
<a name="new_MRClippingGeometry+MRClippingGeometry_new"></a>

#### new exports.MRClippingGeometry(geometry)
Constructor for the clipping geometry class. Sets the internal geometry object to the geometry that is passed through.


| Param | Type | Description |
| --- | --- | --- |
| geometry | <code>object</code> | The geometry to be captured internally by `this.geometry`. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/dataTypes/MRClippingGeometry.js' target='_blank'>Suggest an edit on GitHub for src/dataTypes/MRClippingGeometry.js</a></div>

<hr>

<a name="MRHand"></a>

## MRHand
Class describing the MRHand object representing the UX of the hand object for MR interactions.

**Kind**: global class  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| pinch | <code>boolean</code> | Indicates if the hand is in a pinch gesture. |
| jointPhysicsBodies | <code>object</code> | Physics bodies associated with the hand joints. |
| identityPosition | <code>THREE.Vector3</code> | A reference position for the hand. |
| tempJointPosition | <code>THREE.Vector3</code> | Temporary storage for a joint's position. |
| tempJointOrientation | <code>THREE.Quaternion</code> | Temporary storage for a joint's orientation. |
| controllerModelFactory | <code>XRControllerModelFactory</code> | Factory for creating controller models. |
| handModelFactory | <code>XRHandModelFactory</code> | Factory for creating hand models. |
| mesh | <code>THREE.Mesh</code> | The 3D mesh representing the hand. |
| controller | <code>THREE.Object3D</code> | The controller object. |
| grip | <code>THREE.Object3D</code> | The grip associated with the controller. |
| hand | <code>THREE.Object3D</code> | The 3D object representing the hand. |
| model | <code>THREE.Object3D</code> | The model of the hand. |


* [MRHand](#MRHand)
    * [.MRHand](#MRHand+MRHand)
        * [new exports.MRHand(handedness, app)](#new_MRHand+MRHand_new)
    * [.initPhysicsBodies(app)](#MRHand+initPhysicsBodies)
    * [.update()](#MRHand+update)
    * [.pinchMoved()](#MRHand+pinchMoved)
    * [.updatePhysicsBodies()](#MRHand+updatePhysicsBodies)
    * [.setMesh()](#MRHand+setMesh)
    * [.onSelect(event)](#MRHand+onSelect)
    * [.getJointOrientation(jointName)](#MRHand+getJointOrientation) ⇒ <code>THREE.Quaternion</code>
    * [.getJointPosition(jointName)](#MRHand+getJointPosition) ⇒ <code>THREE.Vector3</code>
    * [.getCursorPosition()](#MRHand+getCursorPosition) ⇒ <code>number</code>

<a name="MRHand+MRHand"></a>

### mrHand.MRHand
**Kind**: instance class of [<code>MRHand</code>](#MRHand)  
<a name="new_MRHand+MRHand_new"></a>

#### new exports.MRHand(handedness, app)
Constructor for the MRHand class object. Setups up all attributes for MRHand including physics, mouse/cursor information, hand tracking and state, and model
information.


| Param | Type | Description |
| --- | --- | --- |
| handedness | <code>object</code> | enum for the `left`` or `right` hand. |
| app | <code>object</code> | the current MRApp that contains the scene for the hand. |

<a name="MRHand+initPhysicsBodies"></a>

### mrHand.initPhysicsBodies(app)
Initializes the physics bodies that the hand represents. Useful for collision detection and UX interactions in MR space.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  

| Param | Type | Description |
| --- | --- | --- |
| app | <code>object</code> | the current MRApp that contains the scene for the hand. |

<a name="MRHand+update"></a>

### mrHand.update()
Update function for the Hand object. Updates the physics bodies and checks whether a pinch has happened or is in progress in any way.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+pinchMoved"></a>

### mrHand.pinchMoved()
If a pinch happens, updates the MR cursor position while sending out an event that movement has occured from this hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+updatePhysicsBodies"></a>

### mrHand.updatePhysicsBodies()
Update function for the physics associated with this hand. Runs for every joint in the system and moves all elements of the hand model.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+setMesh"></a>

### mrHand.setMesh()
Handles the setMesh callback.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+onSelect"></a>

### mrHand.onSelect(event)
Handles the onSelect event

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the on pinch event object |

<a name="MRHand+getJointOrientation"></a>

### mrHand.getJointOrientation(jointName) ⇒ <code>THREE.Quaternion</code>
Gets the joint orientation of the named joint in the hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>THREE.Quaternion</code> - - the quaternion representation or the joint orientation.  

| Param | Type | Description |
| --- | --- | --- |
| jointName | <code>string</code> | the string name of the joint whose information is requested. |

<a name="MRHand+getJointPosition"></a>

### mrHand.getJointPosition(jointName) ⇒ <code>THREE.Vector3</code>
Gets the joint position of the named joint in the hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>THREE.Vector3</code> - - the position representation or the joint orientation.  

| Param | Type | Description |
| --- | --- | --- |
| jointName | <code>string</code> | the string name of the joint whose information is requested. |

<a name="MRHand+getCursorPosition"></a>

### mrHand.getCursorPosition() ⇒ <code>number</code>
Gets the expected cursor position of this hand based on the index finger and thumb's tip positions.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>number</code> - - the resolved position of the cursor.  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/dataTypes/MRHand.js' target='_blank'>Suggest an edit on GitHub for src/dataTypes/MRHand.js</a></div>

<hr>

## Members

<dl>
<dt><a href="#viewPortHeight">viewPortHeight</a> : <code>number</code></dt>
<dd><p>the noted viewport height</p>
</dd>
<dt><a href="#viewPortWidth">viewPortWidth</a> : <code>number</code></dt>
<dd><p>the noted viewport width</p>
</dd>
<dt><a href="#XRScale">XRScale</a> : <code>number</code></dt>
<dd><p>UI needs to be scaled down in XR, 1:1 scale is huuuuge</p>
</dd>
</dl>

<a name="viewPortHeight"></a>

## viewPortHeight : <code>number</code>
the noted viewport height

**Kind**: global variable  
<a name="viewPortWidth"></a>

## viewPortWidth : <code>number</code>
the noted viewport width

**Kind**: global variable  
<a name="XRScale"></a>

## XRScale : <code>number</code>
UI needs to be scaled down in XR, 1:1 scale is huuuuge

**Kind**: global variable  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/global.js' target='_blank'>Suggest an edit on GitHub for src/global.js</a></div>

<hr>

<a name="StringUtils"></a>

## StringUtils : <code>object</code>
Useful namespace for helping with String utility functions

**Kind**: global namespace  

* [StringUtils](#StringUtils) : <code>object</code>
    * [.stringToJson(attrString)](#StringUtils.stringToJson) ⇒ <code>object</code>
    * [.jsonToString(componentData)](#StringUtils.jsonToString) ⇒ <code>string</code>
    * [.stringToVector(str)](#StringUtils.stringToVector) ⇒ <code>object</code>
    * [.stringToDegVector(str)](#StringUtils.stringToDegVector) ⇒ <code>object</code>
    * [.stringToDimensionValue(val)](#StringUtils.stringToDimensionValue) ⇒ <code>number</code>

<a name="StringUtils.stringToJson"></a>

### StringUtils.stringToJson(attrString) ⇒ <code>object</code>
Converts and formats the inputted string to a json object.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - object in json form  

| Param | Type | Description |
| --- | --- | --- |
| attrString | <code>string</code> | the string to be formatted |

<a name="StringUtils.jsonToString"></a>

### StringUtils.jsonToString(componentData) ⇒ <code>string</code>
Converts and formats the inputted json object into a string.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>string</code> - - the string representation of the json object  

| Param | Type | Description |
| --- | --- | --- |
| componentData | <code>object</code> | the json object to be formatted into a string |

<a name="StringUtils.stringToVector"></a>

### StringUtils.stringToVector(str) ⇒ <code>object</code>
Converts a string to vector format.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | <code>string</code> | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="StringUtils.stringToDegVector"></a>

### StringUtils.stringToDegVector(str) ⇒ <code>object</code>
Converts a string to vector format where the numbers are pre-converted from radians to degrees.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | <code>string</code> | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="StringUtils.stringToDimensionValue"></a>

### StringUtils.stringToDimensionValue(val) ⇒ <code>number</code>
Converts a string to vector format where the numbers are pre-converted from a number to an appropriate representation

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>number</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>string</code> | the string to be converted to a vector. Must be of format 'x%' or 'x/y'. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/StringUtils.js' target='_blank'>Suggest an edit on GitHub for src/utils/StringUtils.js</a></div>

<hr>

<a name="xr"></a>

## xr : <code>object</code>
Useful namespace for helping with xr utility functions.
this is set within the MRApp to access various WebXR API features

**Kind**: global namespace  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/XR.js' target='_blank'>Suggest an edit on GitHub for src/utils/XR.js</a></div>

<hr>

<a name="Display"></a>

## Display : <code>object</code>
Useful namespace for helping with Display utility functions

**Kind**: global namespace  

* [Display](#Display) : <code>object</code>
    * [.VIRTUAL_DISPLAY_RESOLUTION](#Display.VIRTUAL_DISPLAY_RESOLUTION)
    * [.mobileCheckFunction()](#Display.mobileCheckFunction) ⇒ <code>boolean</code>

<a name="Display.VIRTUAL_DISPLAY_RESOLUTION"></a>

### Display.VIRTUAL\_DISPLAY\_RESOLUTION
Defaults to 1080;

**Kind**: static property of [<code>Display</code>](#Display)  
<a name="Display.mobileCheckFunction"></a>

### Display.mobileCheckFunction() ⇒ <code>boolean</code>
Checks whether the user is on mobile or not based on a large list of potential options.

**Kind**: static method of [<code>Display</code>](#Display)  
**Returns**: <code>boolean</code> - - returns true if on any mobile devices.  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Display.js' target='_blank'>Suggest an edit on GitHub for src/utils/Display.js</a></div>

<hr>

<a name="Material"></a>

## Material : <code>object</code>
Useful namespace for helping with Materials and threejs utility functions

**Kind**: global namespace  

* [Material](#Material) : <code>object</code>
    * [.getObjectMaterial(parent)](#Material.getObjectMaterial) ⇒ <code>object</code>
    * [.setObjectMaterial(parent, material)](#Material.setObjectMaterial) ⇒ <code>object</code>

<a name="Material.getObjectMaterial"></a>

### Material.getObjectMaterial(parent) ⇒ <code>object</code>
Given the parent, grabs either the parent's direct material or (in the case of a group) the
material of the first child hit.

**Kind**: static method of [<code>Material</code>](#Material)  
**Returns**: <code>object</code> - material - the grabbed material  

| Param | Type | Description |
| --- | --- | --- |
| parent | <code>object</code> | either a THREE.Group or a THREE.mesh/object |

<a name="Material.setObjectMaterial"></a>

### Material.setObjectMaterial(parent, material) ⇒ <code>object</code>
Given the parent, grabs either the parents direct material or (in the case of a group) the
material of the first child hit.

**Kind**: static method of [<code>Material</code>](#Material)  
**Returns**: <code>object</code> - parent - the updated parent object  

| Param | Type | Description |
| --- | --- | --- |
| parent | <code>object</code> | either a THREE.Group or a THREE.mesh/object |
| material | <code>object</code> | a threejs material to be set for either the parent's direct material or (in the case of a group) the material of all children within the parent group. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Material.js' target='_blank'>Suggest an edit on GitHub for src/utils/Material.js</a></div>

<hr>

<a name="Math3D"></a>

## Math3D : <code>object</code>
Useful namespace for helping with Math3D and threejs utility functions

**Kind**: global namespace  
<a name="Math3D.computeBoundingSphere"></a>

### Math3D.computeBoundingSphere(group, relativeTo) ⇒ <code>THREE.Sphere</code>
Computes the bounding sphere of an inputted three group object.

**Kind**: static method of [<code>Math3D</code>](#Math3D)  
**Returns**: <code>THREE.Sphere</code> - - the resolved bounding sphere  

| Param | Type | Description |
| --- | --- | --- |
| group | <code>THREE.group</code> | the group to be enclosed in the bounding sphere. |
| relativeTo | <code>THREE.group</code> | object that the group is relative to. For example if the group is an apple held in a character's hand, relativeTo would be the characters hand. When left as null, the bounding sphere defaults to the inputted groups original world matrix. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Math3D.js' target='_blank'>Suggest an edit on GitHub for src/utils/Math3D.js</a></div>

<hr>

<a name="MathUtils"></a>

## MathUtils : <code>object</code>
Useful namespace for helping with Math utility functions

**Kind**: global namespace  

* [MathUtils](#MathUtils) : <code>object</code>
    * [.roundTo(val, decimal)](#MathUtils.roundTo) ⇒ <code>number</code>
    * [.roundVectorTo(vector, decimal)](#MathUtils.roundVectorTo)
    * [.radToDeg(val)](#MathUtils.radToDeg) ⇒ <code>number</code>

<a name="MathUtils.roundTo"></a>

### MathUtils.roundTo(val, decimal) ⇒ <code>number</code>
Rounds the inputted val to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  
**Returns**: <code>number</code> - - The rounded number to the requested decimal amount.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(832.456, 10) = 832.4; roundTo(832.456, 1000) = 832.456; roundTo(832.456, 0.01) = 800;
```
<a name="MathUtils.roundVectorTo"></a>

### MathUtils.roundVectorTo(vector, decimal)
Rounds the inputted vector to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  

| Param | Type | Description |
| --- | --- | --- |
| vector | <code>vector</code> | The vector of numbers to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(<832.456, 92.10003, 23452.1>, 10) = <832.4, 92.1, 2342.1>;
```
<a name="MathUtils.radToDeg"></a>

### MathUtils.radToDeg(val) ⇒ <code>number</code>
Performs the radian To Degree calculation commonly used in math.
https://en.wikipedia.org/wiki/Degree_(angle) https://en.wikipedia.org/wiki/Radian

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  
**Returns**: <code>number</code> - - the calculated degree representation of val.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be converted from radians to degrees |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/MathUtils.js' target='_blank'>Suggest an edit on GitHub for src/utils/MathUtils.js</a></div>

<hr>

<a name="CSS"></a>

## CSS : <code>object</code>
Useful namespace for helping with CSS utility functions

**Kind**: global namespace  

* [CSS](#CSS) : <code>object</code>
    * [.threeToPx(val)](#CSS.threeToPx) ⇒ <code>number</code>
    * [.pxToThree(val)](#CSS.pxToThree) ⇒ <code>number</code>

<a name="CSS.threeToPx"></a>

### CSS.threeToPx(val) ⇒ <code>number</code>
Converts 3D world positions to display positions based on global viewPort information.
             Useful as part of the layout system and css value handling (px<-->threejs).

**Kind**: static method of [<code>CSS</code>](#CSS)  
**Returns**: <code>number</code> - - the 2D pixel space representation of value.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | the 3D value to be converted to 2D pixel space |

<a name="CSS.pxToThree"></a>

### CSS.pxToThree(val) ⇒ <code>number</code>
Converts display positions to 3D world positions to based on global viewPort information.
Useful as part of the layout system and css value handling (px<-->threejs).

**Kind**: static method of [<code>CSS</code>](#CSS)  
**Returns**: <code>number</code> - - the 3D representation of value.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | the 2D pixel space value to be converted to 3D space. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/CSS.js' target='_blank'>Suggest an edit on GitHub for src/utils/CSS.js</a></div>

<hr>

<a name="Physics"></a>

## Physics : <code>object</code>
Useful namespace for helping with Physics utility functions

**Kind**: global namespace  

* [Physics](#Physics) : <code>object</code>
    * [.CollisionGroups](#Physics.CollisionGroups)
    * [.RAPIER](#Physics.RAPIER)
    * [.INPUT_COLLIDER_HANDLE_NAMES](#Physics.INPUT_COLLIDER_HANDLE_NAMES)
    * [.COLLIDER_ENTITY_MAP](#Physics.COLLIDER_ENTITY_MAP)

<a name="Physics.CollisionGroups"></a>

### Physics.CollisionGroups
the Rapier collision groups used throughout mr.js

**Kind**: static property of [<code>Physics</code>](#Physics)  
<a name="Physics.RAPIER"></a>

### Physics.RAPIER
the RAPIER physics controller object

**Kind**: static property of [<code>Physics</code>](#Physics)  
<a name="Physics.INPUT_COLLIDER_HANDLE_NAMES"></a>

### Physics.INPUT\_COLLIDER\_HANDLE\_NAMES
the Rapier INPUT_COLLIDER_HANDLE_NAMES

**Kind**: static property of [<code>Physics</code>](#Physics)  
<a name="Physics.COLLIDER_ENTITY_MAP"></a>

### Physics.COLLIDER\_ENTITY\_MAP
the Rapier COLLIDER_ENTITY_MAP

**Kind**: static property of [<code>Physics</code>](#Physics)  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Physics.js' target='_blank'>Suggest an edit on GitHub for src/utils/Physics.js</a></div>

<hr>

<a name="Model"></a>

## Model : <code>object</code>
Useful namespace for helping with Model utility functions

**Kind**: global namespace  

* [Model](#Model) : <code>object</code>
    * [.loadDAE(filePath)](#Model.loadDAE) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadFBX(filePath)](#Model.loadFBX) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadGLTF(filePath)](#Model.loadGLTF) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadSTL(filePath)](#Model.loadSTL) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadUSDZ(filePath)](#Model.loadUSDZ) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadModel(filePath, extension)](#Model.loadModel) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>

<a name="Model.loadDAE"></a>

### Model.loadDAE(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads Collada file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadFBX"></a>

### Model.loadFBX(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads FBX file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadGLTF"></a>

### Model.loadGLTF(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads GLTF/GLB file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadSTL"></a>

### Model.loadSTL(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads stl file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadUSDZ"></a>

### Model.loadUSDZ(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads USD/USDZ file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadModel"></a>

### Model.loadModel(filePath, extension) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
The main loading function

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |
| extension | <code>string</code> | The extension of the file type. Current allowed extensions are `fbx`, `glb`, and `stl`. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Model.js' target='_blank'>Suggest an edit on GitHub for src/utils/Model.js</a></div>

<hr>

<a name="Geometry"></a>

## Geometry : <code>object</code>
Useful namespace for helping with Geometry utility functions

**Kind**: global namespace  
<a name="Geometry.UIPlane"></a>

### Geometry.UIPlane(width, height, radius_corner, smoothness) ⇒ <code>THREE.BufferGeometry</code>
This construction function creates the UIPlane that is used as the backdrop for most mrjs Panel divs.

**Kind**: static method of [<code>Geometry</code>](#Geometry)  
**Returns**: <code>THREE.BufferGeometry</code> - - The completed threejs plane object.  

| Param | Type | Description |
| --- | --- | --- |
| width | <code>number</code> | the expected width of the plane. |
| height | <code>number</code> | the expected height of the plane. |
| radius_corner | <code>number</code> | the expected radius value to curve the planes corners. |
| smoothness | <code>number</code> | the expected smoothness value. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Geometry.js' target='_blank'>Suggest an edit on GitHub for src/utils/Geometry.js</a></div>

<hr>

<a name="MRPlaneManager"></a>

## MRPlaneManager
creates and manages the mr.js representation of XR planes.
The resulting planes have RAPIER rigid bodies and THREE.js meshes that occlude virtual content by default

**Kind**: global class  

* [MRPlaneManager](#MRPlaneManager)
    * [.MRPlaneManager](#MRPlaneManager+MRPlaneManager)
        * [new exports.MRPlaneManager(scene, physicsWorld)](#new_MRPlaneManager+MRPlaneManager_new)
    * [.initPhysicsBody(plane)](#MRPlaneManager+initPhysicsBody)

<a name="MRPlaneManager+MRPlaneManager"></a>

### mrPlaneManager.MRPlaneManager
**Kind**: instance class of [<code>MRPlaneManager</code>](#MRPlaneManager)  
<a name="new_MRPlaneManager+MRPlaneManager_new"></a>

#### new exports.MRPlaneManager(scene, physicsWorld)

| Param |
| --- |
| scene | 
| physicsWorld | 

<a name="MRPlaneManager+initPhysicsBody"></a>

### mrPlaneManager.initPhysicsBody(plane)
initializes the physics body of an MR Plane

**Kind**: instance method of [<code>MRPlaneManager</code>](#MRPlaneManager)  

| Param |
| --- |
| plane | 


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/dataManagers/MRPlaneManager.js' target='_blank'>Suggest an edit on GitHub for src/dataManagers/MRPlaneManager.js</a></div>
