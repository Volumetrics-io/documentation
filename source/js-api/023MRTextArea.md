---
title: MRTextArea
---
# MRTextArea

<a name="MRTextArea"></a>

## MRTextArea ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal paragraph user-entry text field items one would expect in a web-browser. `mr-textarea`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextArea](#MRTextArea) ⇐ <code>MRTextEntity</code>
    * [.MRTextArea](#MRTextArea+MRTextArea)
        * [new exports.MRTextArea()](#new_MRTextArea+MRTextArea_new)
    * [.connected()](#MRTextArea+connected)
    * [.blur()](#MRTextArea+blur)
    * [.focus()](#MRTextArea+focus)
    * [.updateCursorPosition()](#MRTextArea+updateCursorPosition)

<a name="MRTextArea+MRTextArea"></a>

### mrTextArea.MRTextArea
**Kind**: instance class of [<code>MRTextArea</code>](#MRTextArea)  
<a name="new_MRTextArea+MRTextArea_new"></a>

#### new exports.MRTextArea()
Constructor for the textArea entity component.

<a name="MRTextArea+connected"></a>

### mrTextArea.connected()
Callback function of MREntity - handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<a name="MRTextArea+blur"></a>

### mrTextArea.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<a name="MRTextArea+focus"></a>

### mrTextArea.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<a name="MRTextArea+updateCursorPosition"></a>

### mrTextArea.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextArea</code>](#MRTextArea)  
<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextArea.js' target='_blank'>Suggest an edit on GitHub for MRTextArea.js</a></div>
