---
title: TextSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/TextSystem.js
---
# TextSystem

<a name="TextSystem"></a>

## TextSystem ⇐ <code>MRSystem</code>
Handles text creation and font rendering for `mr-text`, `mr-textfield`, and `mr-textarea` with a starting framerate of 1/30.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [TextSystem](#TextSystem) ⇐ <code>MRSystem</code>
    * [.TextSystem](#TextSystem+TextSystem)
        * [new exports.TextSystem()](#new_TextSystem+TextSystem_new)
    * [.onNewEntity(entity)](#TextSystem+onNewEntity)
    * [._updateSpecificEntity()](#TextSystem+_updateSpecificEntity)
    * [.eventUpdate()](#TextSystem+eventUpdate)
    * [.update(deltaTime, frame)](#TextSystem+update)
    * [.updateStyle(entity)](#TextSystem+updateStyle)
    * [.addText(entity)](#TextSystem+addText)
    * [.parseFontWeight(weight)](#TextSystem+parseFontWeight) ⇒ <code>string</code>
    * [.parseFontSize(val, el)](#TextSystem+parseFontSize) ⇒ <code>number</code>
    * [.getVerticalAlign(verticalAlign, entity)](#TextSystem+getVerticalAlign) ⇒ <code>string</code>
    * [.getLineHeight(lineHeight, entity)](#TextSystem+getLineHeight) ⇒ <code>number</code>
    * [.getTextAlign(textAlign)](#TextSystem+getTextAlign) ⇒ <code>string</code>
    * [.setColor(textObj, color)](#TextSystem+setColor)
    * [.parseFontFace(cssString)](#TextSystem+parseFontFace) ⇒ <code>object</code>

<a name="TextSystem+TextSystem"></a>

### textSystem.TextSystem
**Kind**: instance class of [<code>TextSystem</code>](#TextSystem)  
<a name="new_TextSystem+TextSystem_new"></a>

#### new exports.TextSystem()
TextSystem's default constructor

<a name="TextSystem+onNewEntity"></a>

### textSystem.onNewEntity(entity)
When a new entity is created, adds it to the physics registry and initializes the physics aspects of the entity.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | the entity being set up |

<a name="TextSystem+_updateSpecificEntity"></a>

### textSystem.\_updateSpecificEntity()
The per entity triggered update call.  Handles updating all text items including updates for style and cleaning of content for special characters.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
<a name="TextSystem+eventUpdate"></a>

### textSystem.eventUpdate()
The per global scene event update call. Handles updating all text items including updates for style and cleaning of content for special characters.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
<a name="TextSystem+update"></a>

### textSystem.update(deltaTime, frame)
The per-frame system update call for all text items including updates for style and cleaning of content for special characters.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | given timestep to be used for any feature changes |
| frame | <code>object</code> | given frame information to be used for any feature changes |

<a name="TextSystem+updateStyle"></a>

### textSystem.updateStyle(entity)
Updates the style for the text's information based on compStyle and inputted css elements.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MRTextEntity</code> | the text entity whose style is being updated |

<a name="TextSystem+addText"></a>

### textSystem.addText(entity)
Handles when text is added as an entity updating content and style for the internal textObj appropriately.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MRTextEntity</code> | the text entity being updated |

<a name="TextSystem+parseFontWeight"></a>

### textSystem.parseFontWeight(weight) ⇒ <code>string</code>
parses the font weight as 'bold', 'normal', etc based on the given weight value

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>string</code> - - the enum of 'bold', 'normal', etc  

| Param | Type | Description |
| --- | --- | --- |
| weight | <code>number</code> | the numerical representation of the font-weight |

<a name="TextSystem+parseFontSize"></a>

### textSystem.parseFontSize(val, el) ⇒ <code>number</code>
parses the font size based on its `XXpx` value and converts it to a usable result based on the virtual display resolution

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>number</code> - - the font size adjusted for the display as expected  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | the value being adjusted |
| el | <code>object</code> | the css element handler |

<a name="TextSystem+getVerticalAlign"></a>

### textSystem.getVerticalAlign(verticalAlign, entity) ⇒ <code>string</code>
Gets the vertical align

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>string</code> - - the string representation of the the verticalAlign  

| Param | Type | Description |
| --- | --- | --- |
| verticalAlign | <code>number</code> | the numerical representation in pixel space of the vertical Align |
| entity | <code>MREntity</code> | the entity whose comp style (css) is relevant |

<a name="TextSystem+getLineHeight"></a>

### textSystem.getLineHeight(lineHeight, entity) ⇒ <code>number</code>
Gets the line height

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>number</code> - - the numerical representation of the the lineHeight  

| Param | Type | Description |
| --- | --- | --- |
| lineHeight | <code>number</code> | the numerical representation in pixel space of the line height |
| entity | <code>MREntity</code> | the entity whose comp style (css) is relevant |

<a name="TextSystem+getTextAlign"></a>

### textSystem.getTextAlign(textAlign) ⇒ <code>string</code>
Gets the text alignment string

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>string</code> - - the resolved `textAlign`.  

| Param | Type | Description |
| --- | --- | --- |
| textAlign | <code>string</code> | handles values for `start`, `end`, `left`, and `right`; otherwise, defaults to the same input as `textAlign`. |

<a name="TextSystem+setColor"></a>

### textSystem.setColor(textObj, color)
Sets the matrial color and opacity based on the css color element

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  

| Param | Type | Description |
| --- | --- | --- |
| textObj | <code>object</code> | the textObj whose color is being updated |
| color | <code>object</code> | the representation of color as `rgba(xxx,xxx,xxx)` or as `#xxx` |

<a name="TextSystem+parseFontFace"></a>

### textSystem.parseFontFace(cssString) ⇒ <code>object</code>
Based on the given font-face value in the passed cssString, tries to either use by default or download the requested font-face
             for use by the text object.

**Kind**: instance method of [<code>TextSystem</code>](#TextSystem)  
**Returns**: <code>object</code> - - json object respresenting the preloaded font-face  

| Param | Type | Description |
| --- | --- | --- |
| cssString | <code>string</code> | the css string to be parsed for the font-face css value. |

