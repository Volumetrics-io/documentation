---
title: MRTextAreaEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextAreaEntity.js
---
# MRTextAreaEntity

<a name="MRTextAreaEntity"></a>

## MRTextAreaEntity ⇐ <code>MRTextInputEntity</code>
The text area element that simulates the behavior of an HTML <textarea> tag,
           allowing for multiline text input and display. Inherits from MRTextInputEntity, which
           in turn extends MRTextEntity.

**Kind**: global class  
**Extends**: <code>MRTextInputEntity</code>  

* [MRTextAreaEntity](#MRTextAreaEntity) ⇐ <code>MRTextInputEntity</code>
    * [.MRTextAreaEntity](#MRTextAreaEntity+MRTextAreaEntity)
    * [.createHiddenInputElement()](#MRTextAreaEntity+createHiddenInputElement)
    * [.fillInHiddenInputElementWithUserData()](#MRTextAreaEntity+fillInHiddenInputElementWithUserData)
    * [.connected()](#MRTextAreaEntity+connected)
    * [.updateTextDisplay()](#MRTextAreaEntity+updateTextDisplay)
    * [.handleKeydown(event)](#MRTextAreaEntity+handleKeydown)
    * [.updateCursorPosition()](#MRTextAreaEntity+updateCursorPosition)

<a name="MRTextAreaEntity+MRTextAreaEntity"></a>

### mrTextAreaEntity.MRTextAreaEntity
**Kind**: instance class of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+createHiddenInputElement"></a>

### mrTextAreaEntity.createHiddenInputElement()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+fillInHiddenInputElementWithUserData"></a>

### mrTextAreaEntity.fillInHiddenInputElementWithUserData()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+connected"></a>

### mrTextAreaEntity.connected()
Overrides the connected method to include setup for handling multiline text.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+updateTextDisplay"></a>

### mrTextAreaEntity.updateTextDisplay()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+handleKeydown"></a>

### mrTextAreaEntity.handleKeydown(event)
Handles keydown events for scrolling and cursor navigation.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

<a name="MRTextAreaEntity+updateCursorPosition"></a>

### mrTextAreaEntity.updateCursorPosition()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
