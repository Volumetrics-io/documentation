---
title: MRTextEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextEntity.js
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
    * [.triggerTextStyleUpdate()](#MRTextEntity+triggerTextStyleUpdate)
    * [.printCurrentTextDebugInfo(textObj)](#MRTextEntity+printCurrentTextDebugInfo)

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
(async) sets up the textObject of the text item.

**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  
<a name="MRTextEntity+triggerTextStyleUpdate"></a>

### mrTextEntity.triggerTextStyleUpdate()
Triggers a system run to update text specifically for the entity calling it. Useful when it's not an overall scene event and for cases where
relying on an overall scene or all items to update isnt beneficial.

**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  
<a name="MRTextEntity+printCurrentTextDebugInfo"></a>

### mrTextEntity.printCurrentTextDebugInfo(textObj)
**Kind**: instance method of [<code>MRTextEntity</code>](#MRTextEntity)  

| Param | Type | Description |
| --- | --- | --- |
| textObj | <code>object</code> | the textobj |

