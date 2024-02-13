---
title: MRTextEntity
---
# MRTextEntity

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
    * [.connected()](#MRTextEntity+connected)
    * [.traverse(callBack)](#MRTextEntity+traverse)

<a name="MRTextEntity+MRTextEntity"></a>

### mrTextEntity.MRTextEntity
**Kind**: instance class of [<code>MRTextEntity</code>](#MRTextEntity)  
<a name="new_MRTextEntity+MRTextEntity_new"></a>

#### new exports.MRTextEntity()
Constructor for the MRTextEntity object.
             Sets up the 3D aspect of the text, including the object, texture, and update check.
             Additionally, adds an event listener for the text to auto-augment whenever the panel size changes.

<a name="MRTextEntity+connected"></a>

### mrTextEntity.connected()
Callback function of MREntity - sets up the textObject of the text item.

**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  
<a name="MRTextEntity+traverse"></a>

### mrTextEntity.traverse(callBack)
Runs the passed through function on this object and every child of this object.

**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  

| Param | Type | Description |
| --- | --- | --- |
| callBack | <code>function</code> | the function to run recursively. |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRTextEntity.js' target='_blank'>Suggest an edit on GitHub for MRTextEntity.js</a></div>