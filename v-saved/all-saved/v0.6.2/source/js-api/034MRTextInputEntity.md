---
title: MRTextInputEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextInputEntity.js
---
# MRTextInputEntity

<a name="MRTextInputEntity"></a>

## MRTextInputEntity ⇐ <code>MRTextEntity</code>
The text element / TODO /

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextInputEntity](#MRTextInputEntity) ⇐ <code>MRTextEntity</code>
    * [.MRTextInputEntity](#MRTextInputEntity+MRTextInputEntity)
        * [new exports.MRTextInputEntity()](#new_MRTextInputEntity+MRTextInputEntity_new)
    * [.value](#MRTextInputEntity+value) ⇒ <code>string</code>
    * [.value](#MRTextInputEntity+value)
    * [.createHiddenInputElement()](#MRTextInputEntity+createHiddenInputElement)
    * [.fillInHiddenInputElementWithUserData()](#MRTextInputEntity+fillInHiddenInputElementWithUserData)
    * [.updateTextDisplay()](#MRTextInputEntity+updateTextDisplay)
    * [.connected()](#MRTextInputEntity+connected)
    * [._createCursorObject()](#MRTextInputEntity+_createCursorObject)
    * [.handleKeydown(event)](#MRTextInputEntity+handleKeydown)
    * [.handleMouseClick(event)](#MRTextInputEntity+handleMouseClick)
    * [.focus(isPureFocusEvent)](#MRTextInputEntity+focus)
    * [.blur()](#MRTextInputEntity+blur)
    * [.setupEventListeners()](#MRTextInputEntity+setupEventListeners)
    * [.updateCursorPosition(fromCursorMove, isNewLine)](#MRTextInputEntity+updateCursorPosition)

<a name="MRTextInputEntity+MRTextInputEntity"></a>

### mrTextInputEntity.MRTextInputEntity
**Kind**: instance class of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="new_MRTextInputEntity+MRTextInputEntity_new"></a>

#### new exports.MRTextInputEntity()
Constructor for the textArea entity component.

<a name="MRTextInputEntity+value"></a>

### mrTextInputEntity.value ⇒ <code>string</code>
**Kind**: instance property of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
**Returns**: <code>string</code> - value - the value of the current text input  
<a name="MRTextInputEntity+value"></a>

### mrTextInputEntity.value
**Kind**: instance property of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+createHiddenInputElement"></a>

### mrTextInputEntity.createHiddenInputElement()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+fillInHiddenInputElementWithUserData"></a>

### mrTextInputEntity.fillInHiddenInputElementWithUserData()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+updateTextDisplay"></a>

### mrTextInputEntity.updateTextDisplay()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+connected"></a>

### mrTextInputEntity.connected()
(async) handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+_createCursorObject"></a>

### mrTextInputEntity.\_createCursorObject()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+handleKeydown"></a>

### mrTextInputEntity.handleKeydown(event)
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

<a name="MRTextInputEntity+handleMouseClick"></a>

### mrTextInputEntity.handleMouseClick(event)
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

<a name="MRTextInputEntity+focus"></a>

### mrTextInputEntity.focus(isPureFocusEvent)
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| isPureFocusEvent | <code>boolean</code> | <code>false</code> | Boolean to allow us to update the cursor position with this function directly. Otherwise, we assume there's other things happening after focus was called as part of the event and that the cursor position will be handled there instead. |

<a name="MRTextInputEntity+blur"></a>

### mrTextInputEntity.blur()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+setupEventListeners"></a>

### mrTextInputEntity.setupEventListeners()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+updateCursorPosition"></a>

### mrTextInputEntity.updateCursorPosition(fromCursorMove, isNewLine)
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| fromCursorMove | <code>boolean</code> | <code>false</code> | false by default. Used to determine if we need to run based off a text object update sync or we can directly grab information. This requirement occurs because the sync isnt usable if no text content changed. |
| isNewLine | <code>boolean</code> | <code>false</code> | false by default. Used to determine if the new character added was a newline character to try to augment the cursor position to something the user would recognize since troika places it in a weird spot until the next character is entered. |

