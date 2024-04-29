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
    * [.fillInHiddenInputElementWithUserData()](#MRTextFieldEntity+fillInHiddenInputElementWithUserData)
    * [.updateTextDisplay(fromCursorMove)](#MRTextFieldEntity+updateTextDisplay)
    * [.hasTextSubsetForVerticalScrolling()](#MRTextFieldEntity+hasTextSubsetForVerticalScrolling) ⇒ <code>boolean</code>
    * [.hasTextSubsetForHorizontalScrolling()](#MRTextFieldEntity+hasTextSubsetForHorizontalScrolling) ⇒ <code>boolean</code>
    * [.handleKeydown(event)](#MRTextFieldEntity+handleKeydown)

<a name="MRTextFieldEntity+MRTextFieldEntity"></a>

### mrTextFieldEntity.MRTextFieldEntity
**Kind**: instance class of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="new_MRTextFieldEntity+MRTextFieldEntity_new"></a>

#### new exports.MRTextFieldEntity()
Constructor for the textField entity component.

<a name="MRTextFieldEntity+createHiddenInputElement"></a>

### mrTextFieldEntity.createHiddenInputElement()
Called by connected to make sure the hiddenInput dom element is created as expected.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+fillInHiddenInputElementWithUserData"></a>

### mrTextFieldEntity.fillInHiddenInputElementWithUserData()
Called by connected after createHiddenInputElement to fill
it in with the user's given attribute information.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+updateTextDisplay"></a>

### mrTextFieldEntity.updateTextDisplay(fromCursorMove)
Used on event trigger to update the textObj visual based on
the hiddenInput DOM element.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| fromCursorMove | <code>boolean</code> | <code>false</code> | default set as false if not supplied. Used because we only want to move the visible region if it is not already handled. Since cursor movement already handles that region change, then we only need to update the new text. Otherwise, we also need to scroll and update the new text. |

<a name="MRTextFieldEntity+hasTextSubsetForVerticalScrolling"></a>

### mrTextFieldEntity.hasTextSubsetForVerticalScrolling() ⇒ <code>boolean</code>
Getter for whether this textinput should handle vertical scrolling or not.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
**Returns**: <code>boolean</code> - true if it should be handled, false otherwise  
<a name="MRTextFieldEntity+hasTextSubsetForHorizontalScrolling"></a>

### mrTextFieldEntity.hasTextSubsetForHorizontalScrolling() ⇒ <code>boolean</code>
Getter for whether this textinput should handle horizontal scrolling or not.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
**Returns**: <code>boolean</code> - true if it should be handled, false otherwise  
<a name="MRTextFieldEntity+handleKeydown"></a>

### mrTextFieldEntity.handleKeydown(event)
Handles keydown events for scrolling and cursor navigation. Note
that this is different than an input event which for our purposes,
handles the non-navigation key-presses.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the keydown event |

