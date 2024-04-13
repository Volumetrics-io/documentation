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
        * [new exports.MRTextAreaEntity()](#new_MRTextAreaEntity+MRTextAreaEntity_new)
    * [.createHiddenInputElement()](#MRTextAreaEntity+createHiddenInputElement)
    * [.fillInHiddenInputElementWithUserData()](#MRTextAreaEntity+fillInHiddenInputElementWithUserData)
    * [.updateTextDisplay()](#MRTextAreaEntity+updateTextDisplay)
    * [.handleKeydown(event)](#MRTextAreaEntity+handleKeydown)

<a name="MRTextAreaEntity+MRTextAreaEntity"></a>

### mrTextAreaEntity.MRTextAreaEntity
**Kind**: instance class of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="new_MRTextAreaEntity+MRTextAreaEntity_new"></a>

#### new exports.MRTextAreaEntity()
Constructor for the MRTextInputEntity entity component.

<a name="MRTextAreaEntity+createHiddenInputElement"></a>

### mrTextAreaEntity.createHiddenInputElement()
Called by connected to make sure the hiddenInput dom element is created as expected.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+fillInHiddenInputElementWithUserData"></a>

### mrTextAreaEntity.fillInHiddenInputElementWithUserData()
Called by connected after createHiddenInputElement to fill
it in with the user's given attribute information.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+updateTextDisplay"></a>

### mrTextAreaEntity.updateTextDisplay()
Used on event trigger to update the textObj visual based on
the hiddenInput DOM element.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+handleKeydown"></a>

### mrTextAreaEntity.handleKeydown(event)
Called by the keydown event trigger. Handles the arrow key movements.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

