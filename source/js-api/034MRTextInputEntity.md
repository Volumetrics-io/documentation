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
    * [.connected()](#MRTextInputEntity+connected)
    * [._createCursor()](#MRTextInputEntity+_createCursor)
    * [.updateCursorPosition()](#MRTextInputEntity+updateCursorPosition)
    * [.handleKeydown(event)](#MRTextInputEntity+handleKeydown)
    * [.updateTextDisplay()](#MRTextInputEntity+updateTextDisplay)
    * [._focus()](#MRTextInputEntity+_focus)
    * [.setupEventListeners()](#MRTextInputEntity+setupEventListeners)

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
<a name="MRTextInputEntity+connected"></a>

### mrTextInputEntity.connected()
Callback function of MREntity - handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+_createCursor"></a>

### mrTextInputEntity.\_createCursor()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+updateCursorPosition"></a>

### mrTextInputEntity.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+handleKeydown"></a>

### mrTextInputEntity.handleKeydown(event)
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

<a name="MRTextInputEntity+updateTextDisplay"></a>

### mrTextInputEntity.updateTextDisplay()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+_focus"></a>

### mrTextInputEntity.\_focus()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
<a name="MRTextInputEntity+setupEventListeners"></a>

### mrTextInputEntity.setupEventListeners()
**Kind**: instance method of [<code>MRTextInputEntity</code>](#MRTextInputEntity)  
