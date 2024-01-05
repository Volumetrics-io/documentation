<a name="MRTextEntity"></a>

## MRTextEntity ⇐ <code>MRDivEntity</code>
The text element that is used to represent normal HTML text one would expect in a web browser.
           Used specifically on `mr-div` items.
           Inherits from MRDivEntity.

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRTextEntity](#MRTextEntity) ⇐ <code>MRDivEntity</code>
    * [.MRTextEntity](#MRTextEntity+MRTextEntity)
        * [new exports.MRTextEntity()](#new_MRTextEntity+MRTextEntity_new)
    * [.height](#MRTextEntity+height) ⇒ <code>number</code>
    * [.connected()](#MRTextEntity+connected)

<a name="MRTextEntity+MRTextEntity"></a>

### mrTextEntity.MRTextEntity
**Kind**: instance class of [<code>MRTextEntity</code>](#MRTextEntity)  
<a name="new_MRTextEntity+MRTextEntity_new"></a>

#### new exports.MRTextEntity()
Constructor for the MRTextEntity object.
             Sets up the 3D aspect of the text, including the object, texture, and update check.
             Additionally, adds an event listener for the text to auto-augment whenever the panel size changes.

<a name="MRTextEntity+height"></a>

### mrTextEntity.height ⇒ <code>number</code>
Represents the height of the rendering area for the text, counting as the CSS height in pixels.

**Kind**: instance property of [<code>MRTextEntity</code>](#MRTextEntity)  
**Returns**: <code>number</code> - the resolved height  
<a name="MRTextEntity+connected"></a>

### mrTextEntity.connected()
Callback function of MREntity - sets up the textObject of the text item.

**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  
