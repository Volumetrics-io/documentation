---
title: MRTextFieldEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextFieldEntity.js
---
# MRTextFieldEntity

<a name="MRTextFieldEntity"></a>

## MRTextFieldEntity ⇐ <code>MRTextInputEntity</code>
The text element that is used to represent normal user-entry text field items one would expect in a web-browser. Limits the one-line. `mr-textfield`

**Kind**: global class  
**Extends**: <code>MRTextInputEntity</code>  

* [MRTextFieldEntity](#MRTextFieldEntity) ⇐ <code>MRTextInputEntity</code>
    * [.MRTextFieldEntity](#MRTextFieldEntity+MRTextFieldEntity)
        * [new exports.MRTextFieldEntity()](#new_MRTextFieldEntity+MRTextFieldEntity_new)
    * [.createHiddenInputElement()](#MRTextFieldEntity+createHiddenInputElement)
    * [.updateTextDisplay()](#MRTextFieldEntity+updateTextDisplay)
    * [.handleKeydown(event)](#MRTextFieldEntity+handleKeydown)

<a name="MRTextFieldEntity+MRTextFieldEntity"></a>

### mrTextFieldEntity.MRTextFieldEntity
**Kind**: instance class of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="new_MRTextFieldEntity+MRTextFieldEntity_new"></a>

#### new exports.MRTextFieldEntity()
Constructor for the textField entity component.

<a name="MRTextFieldEntity+createHiddenInputElement"></a>

### mrTextFieldEntity.createHiddenInputElement()
**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+updateTextDisplay"></a>

### mrTextFieldEntity.updateTextDisplay()
**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+handleKeydown"></a>

### mrTextFieldEntity.handleKeydown(event)
Handles keydown events for scrolling and cursor navigation. Note
that this is different than an input event which for our purposes,
handles the non-navigation key-presses.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

