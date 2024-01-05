<a name="TextField"></a>

## TextField ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal user-entry text field items one would expect in a web-browser. Limits the one-line. `mr-textfield`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [TextField](#TextField) ⇐ <code>MRTextEntity</code>
    * [.TextField](#TextField+TextField)
        * [new exports.TextField()](#new_TextField+TextField_new)
    * [.connected()](#TextField+connected)
    * [.blur()](#TextField+blur)
    * [.focus()](#TextField+focus)
    * [.updateCursorPosition()](#TextField+updateCursorPosition)

<a name="TextField+TextField"></a>

### textField.TextField
**Kind**: instance class of [<code>TextField</code>](#TextField)  
<a name="new_TextField+TextField_new"></a>

#### new exports.TextField()
Constructor for the textField entity component.

<a name="TextField+connected"></a>

### textField.connected()
Callback function of MREntity - handles setting up this textfield once it is connected to run as an entity component.

**Kind**: instance method of [<code>TextField</code>](#TextField)  
<a name="TextField+blur"></a>

### textField.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>TextField</code>](#TextField)  
<a name="TextField+focus"></a>

### textField.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>TextField</code>](#TextField)  
<a name="TextField+updateCursorPosition"></a>

### textField.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>TextField</code>](#TextField)  
