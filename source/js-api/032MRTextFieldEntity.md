---
title: MRTextFieldEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextFieldEntity.js
---
# MRTextFieldEntity

<a name="MRTextFieldEntity"></a>

## MRTextFieldEntity ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal user-entry text field items one would expect in a web-browser. Limits the one-line. `mr-textfield`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextFieldEntity](#MRTextFieldEntity) ⇐ <code>MRTextEntity</code>
    * [.MRTextFieldEntity](#MRTextFieldEntity+MRTextFieldEntity)
        * [new exports.MRTextFieldEntity()](#new_MRTextFieldEntity+MRTextFieldEntity_new)
    * [.connected()](#MRTextFieldEntity+connected)
    * [.blur()](#MRTextFieldEntity+blur)
    * [.focusInput()](#MRTextFieldEntity+focusInput)
    * [.updateCursorPosition()](#MRTextFieldEntity+updateCursorPosition)

<a name="MRTextFieldEntity+MRTextFieldEntity"></a>

### mrTextFieldEntity.MRTextFieldEntity
**Kind**: instance class of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="new_MRTextFieldEntity+MRTextFieldEntity_new"></a>

#### new exports.MRTextFieldEntity()
Constructor for the textField entity component.

<a name="MRTextFieldEntity+connected"></a>

### mrTextFieldEntity.connected()
Callback function of MREntity - handles setting up this textfield once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+blur"></a>

### mrTextFieldEntity.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+focusInput"></a>

### mrTextFieldEntity.focusInput()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
<a name="MRTextFieldEntity+updateCursorPosition"></a>

### mrTextFieldEntity.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextFieldEntity</code>](#MRTextFieldEntity)  
