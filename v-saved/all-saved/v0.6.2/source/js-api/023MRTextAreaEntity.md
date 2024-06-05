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
    * [.updateTextDisplay()](#MRTextAreaEntity+updateTextDisplay)
    * [.handleKeydown(event)](#MRTextAreaEntity+handleKeydown)

<a name="MRTextAreaEntity+MRTextAreaEntity"></a>

### mrTextAreaEntity.MRTextAreaEntity
**Kind**: instance class of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+createHiddenInputElement"></a>

### mrTextAreaEntity.createHiddenInputElement()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+fillInHiddenInputElementWithUserData"></a>

### mrTextAreaEntity.fillInHiddenInputElementWithUserData()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+updateTextDisplay"></a>

### mrTextAreaEntity.updateTextDisplay()
**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+handleKeydown"></a>

### mrTextAreaEntity.handleKeydown(event)
Handles keydown events for scrolling and cursor navigation. Note
that this is different than an input event which for our purposes,
handles the non-navigation key-presses.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

