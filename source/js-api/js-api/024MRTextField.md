---
title: MRTextField
---
# MRTextField

<a name="MRTextField"></a>

## MRTextField ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal user-entry text field items one would expect in a web-browser. Limits the one-line. `mr-textfield`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [MRTextField](#MRTextField) ⇐ <code>MRTextEntity</code>
    * [.MRTextField](#MRTextField+MRTextField)
        * [new exports.MRTextField()](#new_MRTextField+MRTextField_new)
    * [.connected()](#MRTextField+connected)
    * [.blur()](#MRTextField+blur)
    * [.focus()](#MRTextField+focus)
    * [.updateCursorPosition()](#MRTextField+updateCursorPosition)

<a name="MRTextField+MRTextField"></a>

### mrTextField.MRTextField
**Kind**: instance class of [<code>MRTextField</code>](#MRTextField)  
<a name="new_MRTextField+MRTextField_new"></a>

#### new exports.MRTextField()
Constructor for the textField entity component.

<a name="MRTextField+connected"></a>

### mrTextField.connected()
Callback function of MREntity - handles setting up this textfield once it is connected to run as an entity component.

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<a name="MRTextField+blur"></a>

### mrTextField.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<a name="MRTextField+focus"></a>

### mrTextField.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<a name="MRTextField+updateCursorPosition"></a>

### mrTextField.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>MRTextField</code>](#MRTextField)  
<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextField.js' target='_blank'>Suggest an edit on GitHub for MRTextField.js</a></div>
