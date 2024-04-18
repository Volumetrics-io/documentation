---
title: MRTextInputEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextInputEntity.js
---
# MRTextInputEntity

<a name="MRTextInputEntity"></a>

## MRTextInputEntity ⇐ <code>MRTextEntity</code>
Base text inpu entity represented in 3D space. `mr-text-input`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextInputEntity](#MRTextInputEntity) ⇐ <code>MRTextEntity</code>
    * [.MRTextInputEntity](#MRTextInputEntity+MRTextInputEntity)
        * [new exports.MRTextInputEntity()](#new_MRTextInputEntity+MRTextInputEntity_new)
    * [.value()](#MRTextInputEntity+value) ⇒ <code>string</code>
    * [.value()](#MRTextInputEntity+value)
    * [.createHiddenInputElement()](#MRTextInputEntity+createHiddenInputElement)
    * [.fillInHiddenInputElementWithUserData()](#MRTextInputEntity+fillInHiddenInputElementWithUserData)
    * [.updateTextDisplay()](#MRTextInputEntity+updateTextDisplay)
    * [.connected()](#MRTextInputEntity+connected)
    * [._createCursorObject()](#MRTextInputEntity+_createCursorObject)
    * [._updateCursorSize(newHeight)](#MRTextInputEntity+_updateCursorSize)
    * [.handleKeydown(event)](#MRTextInputEntity+handleKeydown)
    * [.handleMouseClick(event)](#MRTextInputEntity+handleMouseClick)
    * [._focus(isPureFocusEvent)](#MRTextInputEntity+_focus)
    * [._blur()](#MRTextInputEntity+_blur)
    * [.inputIsDisabled()](#MRTextInputEntity+inputIsDisabled) ⇒ <code>boolean</code>
    * [.inputIsReadOnly()](#MRTextInputEntity+inputIsReadOnly) ⇒ <code>boolean</code>
    * [.setupEventListeners()](#MRTextInputEntity+setupEventListeners)
    * [.updateCursorPosition(fromCursorMove)](#MRTextInputEntity+updateCursorPosition)

<a name="MRTextInputEntity+MRTextInputEntity"></a>

### mrTextInputEntity.MRTextInputEntity
**Kind**: instance class of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="new_MRTextInputEntity+MRTextInputEntity_new"></a>

#### new exports.MRTextInputEntity()
Constructor for the MRTextInputEntity entity component.

<a name="MRTextInputEntity+value"></a>

### mrTextInputEntity.value() ⇒ <code>string</code>
Gets the value of the text for the current hiddenInput DOM object

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
**Returns**: <code>string</code> - value - the text value of the current hiddenInput DOM object  
<a name="MRTextInputEntity+value"></a>

### mrTextInputEntity.value()
Sets the value of the text for the current hiddenInput DOM object

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+createHiddenInputElement"></a>

### mrTextInputEntity.createHiddenInputElement()
Function to be overwritten by children. Called by connected to make sure
the hiddenInput dom element is created as expected.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+fillInHiddenInputElementWithUserData"></a>

### mrTextInputEntity.fillInHiddenInputElementWithUserData()
Function to be overwritten by children. Called by connected after
createHiddenInputElement to fill it in with the user's given
attribute information.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+updateTextDisplay"></a>

### mrTextInputEntity.updateTextDisplay()
Function to be overwritten by children. Used on event trigger to
update the textObj visual based on the hiddenInput DOM element.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+connected"></a>

### mrTextInputEntity.connected()
(async) Handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+_createCursorObject"></a>

### mrTextInputEntity.\_createCursorObject()
Internal function used to setup the cursor object and associated variables
needed during runtime. Sets the cursor geometry based on dev updated cursorWidth and
cursorHeight MRTextInputEntity variables.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+_updateCursorSize"></a>

### mrTextInputEntity.\_updateCursorSize(newHeight)
Internal function used to setup the cursor object and associated variables
needed during runtime. User can pass in a new height directly or the function checks
whether cursor height should be updated based on fontSize compared to line height
and other aspects.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Description |
| --- | --- | --- |
| newHeight | <code>number</code> | an optional parameter to be used as the cursor's new height. |

<a name="MRTextInputEntity+handleKeydown"></a>

### mrTextInputEntity.handleKeydown(event)
Function to be overwritten by children. Called by the keydown event trigger.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

<a name="MRTextInputEntity+handleMouseClick"></a>

### mrTextInputEntity.handleMouseClick(event)
Called by the mouse click event trigger. Handles determining the
caret position based on the 3D textObj to hiddenInput DOM position conversion.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the mouseclick event |

<a name="MRTextInputEntity+_focus"></a>

### mrTextInputEntity.\_focus(isPureFocusEvent)
Called by the focus event trigger and in other 'focus' situations. We use the
private version of this function signature to not hit the intersection of the actual 'focus()'
event naming that we have connected. See 'setupEventListeners()' description for more info.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| isPureFocusEvent | <code>boolean</code> | <code>false</code> | Boolean to allow us to update the cursor position with this function directly. Otherwise, we assume there's other things happening after focus was called as part of the event and that the cursor position will be handled there instead. |

<a name="MRTextInputEntity+_blur"></a>

### mrTextInputEntity.\_blur()
Called by the blur event trigger and in other 'blur' situations. We use the
private version of this function signature to not hit the intersection of the actual 'blur()'
event naming that we have connected. See 'setupEventListeners()' description for more info.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+inputIsDisabled"></a>

### mrTextInputEntity.inputIsDisabled() ⇒ <code>boolean</code>
Getter for a commonly needed attribute: 'disabled' for whether this input is still being updated.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
**Returns**: <code>boolean</code> - true if disabled, false otherwise  
<a name="MRTextInputEntity+inputIsReadOnly"></a>

### mrTextInputEntity.inputIsReadOnly() ⇒ <code>boolean</code>
Getter for a commonly needed attribute: 'readonly' for whether this input's text can still be changed.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
**Returns**: <code>boolean</code> - true if readonly, false otherwise  
<a name="MRTextInputEntity+setupEventListeners"></a>

### mrTextInputEntity.setupEventListeners()
Connecting the event listeners to the actual functions that handle them. Includes
additional calls where necessary.

Since we want the text input children to be able
to override the parent function event triggers,
separating them into an actual function here
and calling them manually instead of doing the pure
'functionname () => {} event type setup'. This manual
connection allows us to call super.func() for event
functions; otherwise, theyre not accessible nor implemented
in the subclasses.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+updateCursorPosition"></a>

### mrTextInputEntity.updateCursorPosition(fromCursorMove)
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| fromCursorMove | <code>boolean</code> | <code>false</code> | false by default. Used to determine if we need to run based off a text object update sync or we can directly grab information. This requirement occurs because the sync isnt usable if no text content changed. |

