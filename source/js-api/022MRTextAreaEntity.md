---
title: MRTextAreaEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRTextAreaEntity.js
---
# MRTextAreaEntity

<a name="MRTextAreaEntity"></a>

## MRTextAreaEntity ⇐ <code>MRTextInputEntity</code>
The text area element that simulates the behavior of an HTML <textarea> tag,
           allowing for multiline text input and display. Inherits from MRTextInputEntity, which
           in turn extends MRTextEntity.

**Kind**: global class  
**Extends**: <code>MRTextInputEntity</code>  

* [MRTextAreaEntity](#MRTextAreaEntity) ⇐ <code>MRTextInputEntity</code>
    * [.connected()](#MRTextAreaEntity+connected)
    * [.handleKeydown()](#MRTextAreaEntity+handleKeydown)

<a name="MRTextAreaEntity+connected"></a>

### mrTextAreaEntity.connected()
Overrides the connected method to include setup for handling multiline text.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
<a name="MRTextAreaEntity+handleKeydown"></a>

### mrTextAreaEntity.handleKeydown()
Handles keydown events for scrolling and cursor navigation.

**Kind**: instance method of [<code>MRTextAreaEntity</code>](#MRTextAreaEntity)  
