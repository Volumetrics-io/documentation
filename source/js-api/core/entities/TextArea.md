<a name="TextArea"></a>

## TextArea ⇐ <code>MRTextEntity</code>
The text element that is used to represent normal paragraph user-entry text field items one would expect in a web-browser. `mr-textarea`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  

* [TextArea](#TextArea) ⇐ <code>MRTextEntity</code>
    * [.TextArea](#TextArea+TextArea)
        * [new exports.TextArea()](#new_TextArea+TextArea_new)
    * [.connected()](#TextArea+connected)
    * [.blur()](#TextArea+blur)
    * [.focus()](#TextArea+focus)
    * [.updateCursorPosition()](#TextArea+updateCursorPosition)

<a name="TextArea+TextArea"></a>

### textArea.TextArea
**Kind**: instance class of [<code>TextArea</code>](#TextArea)  
<a name="new_TextArea+TextArea_new"></a>

#### new exports.TextArea()
Constructor for the textArea entity component.

<a name="TextArea+connected"></a>

### textArea.connected()
Callback function of MREntity - handles setting up this textarea once it is connected to run as an entity component.

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
<a name="TextArea+blur"></a>

### textArea.blur()
Blurs the inputted text value and cursor information

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
<a name="TextArea+focus"></a>

### textArea.focus()
Focuses the inputted text value and cursor information as if it is selected. Includes showing the cursor item.

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
<a name="TextArea+updateCursorPosition"></a>

### textArea.updateCursorPosition()
Updates the cursor position based on click and selection location.

**Kind**: instance method of [<code>TextArea</code>](#TextArea)  
