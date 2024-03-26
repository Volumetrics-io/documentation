---
title: MRTextAreaEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextAreaEntity.js
---
# MRTextAreaEntity

<a name="MRTextAreaEntity"></a>

## MRTextAreaEntity ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal paragraph user-entry text field items one would expect in a web-browser. `mr-textarea`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextAreaEntity](#MRTextAreaEntity) ⇐ <code>MRTextEntity</code>
    * [.MRTextAreaEntity](#MRTextAreaEntity+MRTextAreaEntity)
        * [new exports.MRTextAreaEntity()](#new_MRTextAreaEntity+MRTextAreaEntity_new)
    * [.connected()](#MRTextAreaEntity+connected)
    * [.blur()](#MRTextAreaEntity+blur)
    * [.focus()](#MRTextAreaEntity+focus)
    * [.updateCursorPosition()](#MRTextAreaEntity+updateCursorPosition)

<a name="MRTextAreaEntity+MRTextAreaEntity"></a>

### mrTextAreaEntity.MRTextAreaEntity
**Kind**: instance class of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="new_MRTextAreaEntity+MRTextAreaEntity_new"></a>

#### new exports.MRTextAreaEntity()
Constructor for the textArea entity component.

<a name="MRTextAreaEntity+connected"></a>

### mrTextAreaEntity.connected()
Callback function of MREntity - handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+blur"></a>

### mrTextAreaEntity.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+focus"></a>

### mrTextAreaEntity.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+updateCursorPosition"></a>

### mrTextAreaEntity.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
