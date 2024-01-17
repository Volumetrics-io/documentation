---
description: "Javascript API"
---
# Javascript API


<a name="MRSystem"></a>

## MRSystem
The default representation of an MRSystem to be expanded upon by actual details ECS System items.

**Kind**: global class  

* [MRSystem](#MRSystem)
    * [.MRSystem](#MRSystem+MRSystem)
        * [new exports.MRSystem(useComponents, frameRate)](#new_MRSystem+MRSystem_new)
    * [.needsUpdate(deltaTime, frame)](#MRSystem+needsUpdate) ⇒ <code>boolean</code>
    * [.__update(deltaTime, frame)](#MRSystem+__update)
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

<a name="MRSystem+needsUpdate"></a>

### mrSystem.needsUpdate(deltaTime, frame) ⇒ <code>boolean</code>
Checks if we need to run the generic system update call. Default implementation returns true if there are
any items in the system's registry. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MRSystem</code>](#MRSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where an update is needed to be run this render call, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="MRSystem+__update"></a>

### mrSystem.\_\_update(deltaTime, frame)
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


<a name="MRApp"></a>

## MRApp ⇐ <code>MRElement</code>
The engine handler for running MRjs as an App. `mr-app`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MRApp](#MRApp) ⇐ <code>MRElement</code>
    * _instance_
        * [.MRApp](#MRApp+MRApp)
            * [new exports.MRApp()](#new_MRApp+MRApp_new)
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


<a name="InstancingSystem"></a>

## InstancingSystem ⇐ <code>MRSystem</code>
System that allows for instancing of meshes based on a given entity where the instances can be modified separately.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [InstancingSystem](#InstancingSystem) ⇐ <code>MRSystem</code>
    * [.InstancingSystem](#InstancingSystem+InstancingSystem)
        * [new exports.InstancingSystem()](#new_InstancingSystem+InstancingSystem_new)
    * [.update(deltaTime, frame)](#InstancingSystem+update)
    * [.attachedComponent(entity)](#InstancingSystem+attachedComponent)
    * [.random(entity)](#InstancingSystem+random)

<a name="InstancingSystem+InstancingSystem"></a>

### instancingSystem.InstancingSystem
**Kind**: instance class of [<code>InstancingSystem</code>](#InstancingSystem)  
<a name="new_InstancingSystem+InstancingSystem_new"></a>

#### new exports.InstancingSystem()
InstancingSystem's default constructor that sets up default instancing count, transformations, and mesh information.

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


<a name="MaskingSystem"></a>

## MaskingSystem ⇐ <code>MRSystem</code>
Handles specific needs for setting up the masking for all necessary items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [MaskingSystem](#MaskingSystem) ⇐ <code>MRSystem</code>
    * [.MaskingSystem](#MaskingSystem+MaskingSystem)
        * [new exports.MaskingSystem()](#new_MaskingSystem+MaskingSystem_new)
    * [.needsUpdate(deltaTime, frame)](#MaskingSystem+needsUpdate) ⇒ <code>boolean</code>
    * [.update(deltaTime, frame)](#MaskingSystem+update)
    * [.onNewEntity(entity)](#MaskingSystem+onNewEntity)

<a name="MaskingSystem+MaskingSystem"></a>

### maskingSystem.MaskingSystem
**Kind**: instance class of [<code>MaskingSystem</code>](#MaskingSystem)  
<a name="new_MaskingSystem+MaskingSystem_new"></a>

#### new exports.MaskingSystem()
MaskingSystem's default constructor.

<a name="MaskingSystem+needsUpdate"></a>

### maskingSystem.needsUpdate(deltaTime, frame) ⇒ <code>boolean</code>
Checks if we need to run the generic system update call. Default implementation returns true if there are
any items in the system's registry. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>MaskingSystem</code>](#MaskingSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where an update is needed to be run this render call, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

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


<a name="TextSystem"></a>

## TextSystem ⇐ <code>MRSystem</code>
Handles text creation and font rendering for `mr-text`, `mr-textfield`, and `mr-textarea` with a starting framerate of 1/30.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [TextSystem](#TextSystem) ⇐ <code>MRSystem</code>
    * [.TextSystem](#TextSystem+TextSystem)
        * [new exports.TextSystem()](#new_TextSystem+TextSystem_new)
    * [.onNewEntity(entity)](#TextSystem+onNewEntity)
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

<a name="TextSystem+onNewEntity"></a>

### textSystem.onNewEntity(entity)
When a new entity is created, adds it to the physics registry and initializes the physics aspects of the entity.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being set up |

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


<a name="AnimationSystem"></a>

## AnimationSystem ⇐ <code>MRSystem</code>
Handles specific needs for setting up the masking for all necessary items.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AnimationSystem](#AnimationSystem) ⇐ <code>MRSystem</code>
    * [.AnimationSystem](#AnimationSystem+AnimationSystem)
        * [new exports.AnimationSystem()](#new_AnimationSystem+AnimationSystem_new)
    * [.update(deltaTime, frame)](#AnimationSystem+update)
    * [.onNewEntity(entity)](#AnimationSystem+onNewEntity)

<a name="AnimationSystem+AnimationSystem"></a>

### animationSystem.AnimationSystem
**Kind**: instance class of [<code>AnimationSystem</code>](#AnimationSystem)  
<a name="new_AnimationSystem+AnimationSystem_new"></a>

#### new exports.AnimationSystem()
AnimationSystem's default constructor.

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


<a name="AnchorSystem"></a>

## AnchorSystem ⇐ <code>MRSystem</code>
creates and manages WebXR anchors in the MR scene.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [AnchorSystem](#AnchorSystem) ⇐ <code>MRSystem</code>
    * [.AnchorSystem](#AnchorSystem+AnchorSystem)
        * [new exports.AnchorSystem()](#new_AnchorSystem+AnchorSystem_new)
    * [.needsUpdate(deltaTime, frame)](#AnchorSystem+needsUpdate) ⇒ <code>boolean</code>
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

<a name="AnchorSystem+needsUpdate"></a>

### anchorSystem.needsUpdate(deltaTime, frame) ⇒ <code>boolean</code>
Checks if we need to run the generic system update call. Default implementation returns true if there are
any items in the system's registry. Allows subclasses to override with their own implementation.

**Kind**: instance method of [<code>AnchorSystem</code>](#AnchorSystem)  
**Returns**: <code>boolean</code> - true if the system is in a state where an update is needed to be run this render call, false otherwise  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

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


<a name="MREntity"></a>

## MREntity ⇐ <code>MRElement</code>
The default representation of an MRElement to be expanded upon by actual details ECS Entity items. `mr-entity`

**Kind**: global class  
**Extends**: <code>MRElement</code>  

* [MREntity](#MREntity) ⇐ <code>MRElement</code>
    * [.MREntity](#MREntity+MREntity)
        * [new exports.MREntity()](#new_MREntity+MREntity_new)
    * [.width()](#MREntity+width) ⇒ <code>number</code>
    * [.contentWidth()](#MREntity+contentWidth) ⇒ <code>number</code>
    * [.height()](#MREntity+height) ⇒ <code>number</code>
    * [.contentHeight()](#MREntity+contentHeight) ⇒ <code>number</code>
    * [.updatePhysicsData()](#MREntity+updatePhysicsData)
    * [.onHover(event)](#MREntity+onHover)
    * [.onTouch(event)](#MREntity+onTouch)
    * [.onScroll(event)](#MREntity+onScroll)
    * [.connectedCallback()](#MREntity+connectedCallback)
    * [.loadAttributes()](#MREntity+loadAttributes)
    * [.connected()](#MREntity+connected)
    * [.disconnected()](#MREntity+disconnected)
    * [.disconnectedCallback()](#MREntity+disconnectedCallback)
    * [.mutated(mutation)](#MREntity+mutated)
    * [.mutationCallback(mutationList, observer)](#MREntity+mutationCallback)
    * [.componentMutated(mutation)](#MREntity+componentMutated)
    * [.add(entity)](#MREntity+add)
    * [.remove(entity)](#MREntity+remove)
    * [.traverse(callBack)](#MREntity+traverse)

<a name="MREntity+MREntity"></a>

### mrEntity.MREntity
**Kind**: instance class of [<code>MREntity</code>](#MREntity)  
<a name="new_MREntity+MREntity_new"></a>

#### new exports.MREntity()
Constructor for the default Entity Component (MREntity).
             Sets up the base object3D and useful Mixed Reality information including rendering, touching, and component basics.

<a name="MREntity+width"></a>

### mrEntity.width() ⇒ <code>number</code>
Calculates the width of the Entity based on the viewPort's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - the resolved width  
<a name="MREntity+contentWidth"></a>

### mrEntity.contentWidth() ⇒ <code>number</code>
The actual 3D value of the content's width.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - width of the 3D object.  
<a name="MREntity+height"></a>

### mrEntity.height() ⇒ <code>number</code>
Calculates the height of the Entity based on the viewPort's shape. If in Mixed Reality, adjusts the value appropriately.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - the resolved height  
<a name="MREntity+contentHeight"></a>

### mrEntity.contentHeight() ⇒ <code>number</code>
The actual 3D value of the content's height.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
**Returns**: <code>number</code> - - height of the 3D object.  
<a name="MREntity+updatePhysicsData"></a>

### mrEntity.updatePhysicsData()
Default base for updating the physics data for the current iteration.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+onHover"></a>

### mrEntity.onHover(event)
Handles the hover event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the hover event |

<a name="MREntity+onTouch"></a>

### mrEntity.onTouch(event)
Handles the touch event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the touch event |

<a name="MREntity+onScroll"></a>

### mrEntity.onScroll(event)
Handles the scroll event

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>object</code> | the scroll event |

<a name="MREntity+connectedCallback"></a>

### mrEntity.connectedCallback()
The connectedCallback function that runs whenever this entity component becomes connected to something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+loadAttributes"></a>

### mrEntity.loadAttributes()
Loads all attributes of this entity's stored dataset including components, attaching them, and their associated rotations and positions.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+connected"></a>

### mrEntity.connected()
Callback function of MREntity - does nothing. Is called by the connectedCallback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+disconnected"></a>

### mrEntity.disconnected()
Callback function of MREntity - does nothing. Is called by the disconnectedCallback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+disconnectedCallback"></a>

### mrEntity.disconnectedCallback()
The disconnectedCallback function that runs whenever this entity component becomes disconnected from something else.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  
<a name="MREntity+mutated"></a>

### mrEntity.mutated(mutation)
Callback function of MREntity - does nothing. Is called by mutation Callback.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MREntity+mutationCallback"></a>

### mrEntity.mutationCallback(mutationList, observer)
The mutationCallback function that runs whenever this entity component should be mutated.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutationList | <code>object</code> | the list of update/change/mutation(s) to be handled. |
| observer | <code>object</code> | w3 standard object that watches for changes on the HTMLElement |

<a name="MREntity+componentMutated"></a>

### mrEntity.componentMutated(mutation)
Helper function for the mutationCallback. Handles actually updating this entity component with all the associated dispatchEvents.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="MREntity+add"></a>

### mrEntity.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | [<code>MREntity</code>](#MREntity) | the entity to be added. |

<a name="MREntity+remove"></a>

### mrEntity.remove(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| entity | [<code>MREntity</code>](#MREntity) | the entity to be removed. |

<a name="MREntity+traverse"></a>

### mrEntity.traverse(callBack)
Runs the passed through function on this object and every child of this object.

**Kind**: instance method of [<code>MREntity</code>](#MREntity)  

| Param | Type | Description |
| --- | --- | --- |
| callBack | <code>function</code> | the function to run recursively. |


<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MREntity.js' target='_blank'>Suggest an edit on GitHub for src/core/MREntity.js</a></div>


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


<a name="MRPlane"></a>

## MRPlane
a name space representation of an MR Plane

**Kind**: global class  

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/dataTypes/MRPlane.js' target='_blank'>Suggest an edit on GitHub for src/dataTypes/MRPlane.js</a></div>


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

