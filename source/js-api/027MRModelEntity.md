---
title: MRModelEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRModelEntity.js
---
# MRModelEntity

<a name="MRModelEntity"></a>

## MRModelEntity ⇐ <code>MRDivEntity</code>
Loads in any supported 3D model type to the requested location. `mr-model`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [MRModelEntity](#MRModelEntity) ⇐ <code>MRDivEntity</code>
    * [.MRModelEntity](#MRModelEntity+MRModelEntity)
        * [new exports.MRModelEntity()](#new_MRModelEntity+MRModelEntity_new)
    * [.src()](#MRModelEntity+src) ⇒ <code>string</code>
    * [.src()](#MRModelEntity+src)
    * [.loadModel()](#MRModelEntity+loadModel)
    * [.connected()](#MRModelEntity+connected)
    * [.onLoad()](#MRModelEntity+onLoad)

<a name="MRModelEntity+MRModelEntity"></a>

### mrModelEntity.MRModelEntity
**Kind**: instance class of [<code>MRModelEntity</code>](#MRModelEntity)  
<a name="new_MRModelEntity+MRModelEntity_new"></a>

#### new exports.MRModelEntity()
Constructor for the Model entity, does the default.

<a name="MRModelEntity+src"></a>

### mrModelEntity.src() ⇒ <code>string</code>
Pair getter for the src property of <mr-model>. Important so that when a user tries
to run modelObject.src = `...` or perform something on modelObject.src it properly gets the html
attribute as expected instead of the pure js one.

note: we can do this because only htmlimageelement has a `src` property by default, not htmlimagelement,
and none of the above class extensions for Model have it as a defined property.

**Kind**: instance method of [<code>MRModelEntity</code>](#MRModelEntity)  
**Returns**: <code>string</code> - the value of the src html attribute  
<a name="MRModelEntity+src"></a>

### mrModelEntity.src()
Setter for the src property of <mr-model>. Important so that when a user tries
to run modelObject.src = `...` it properly sets the html attribute as expected instead of the
pure js one.

note: we can do this because only htmlimageelement has a `src` property by default, not htmlimagelement,
and none of the above class extensions for Model have it as a defined property.

**Kind**: instance method of [<code>MRModelEntity</code>](#MRModelEntity)  
<a name="MRModelEntity+loadModel"></a>

### mrModelEntity.loadModel()
Async function that fills in this Model object based on src file information

**Kind**: instance method of [<code>MRModelEntity</code>](#MRModelEntity)  
<a name="MRModelEntity+connected"></a>

### mrModelEntity.connected()
Callback function of MREntity - handles setting up this Model once it is connected to run as an entity component.
Includes loading up the model and associated data.

**Kind**: instance method of [<code>MRModelEntity</code>](#MRModelEntity)  
<a name="MRModelEntity+onLoad"></a>

### mrModelEntity.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>MRModelEntity</code>](#MRModelEntity)  
