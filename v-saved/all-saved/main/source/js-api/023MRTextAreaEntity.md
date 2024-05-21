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
    * [.hasTextSubsetForVerticalScrolling()](#MRTextAreaEntity+hasTextSubsetForVerticalScrolling) ⇒ <code>boolean</code>
    * [.hasTextSubsetForHorizontalScrolling()](#MRTextAreaEntity+hasTextSubsetForHorizontalScrolling) ⇒ <code>boolean</code>
    * [.updateTextDisplay(fromCursorMove)](#MRTextAreaEntity+updateTextDisplay)
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
<a name="MRTextAreaEntity+hasTextSubsetForVerticalScrolling"></a>

### mrTextAreaEntity.hasTextSubsetForVerticalScrolling() ⇒ <code>boolean</code>
Getter for whether this textinput should handle vertical scrolling or not.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
**Returns**: <code>boolean</code> - true if it should be handled, false otherwise  
<a name="MRTextAreaEntity+hasTextSubsetForHorizontalScrolling"></a>

### mrTextAreaEntity.hasTextSubsetForHorizontalScrolling() ⇒ <code>boolean</code>
Getter for whether this textinput should handle horizontal scrolling or not.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
**Returns**: <code>boolean</code> - true if it should be handled, false otherwise  
<a name="MRTextAreaEntity+updateTextDisplay"></a>

### mrTextAreaEntity.updateTextDisplay(fromCursorMove)
Used on event trigger to update the textObj visual based on
the hiddenInput DOM element.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| fromCursorMove | <code>boolean</code> | <code>false</code> | default set as false if not supplied. Used because we only want to move the visible region if it is not already handled. Since cursor movement already handles that region change, then we only need to update the new text. Otherwise, we also need to scroll and update the new text. |

<a name="MRTextAreaEntity+handleKeydown"></a>

### mrTextAreaEntity.handleKeydown(event)
Called by the keydown event trigger. Handles the arrow key movements.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

