---
title: MRModel
---
# MRModel

<a name="MRModel"></a>

## MRModel ⇐ <code>MREntity</code>
Loads in any supported 3D model type to the requested location. `mr-model`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [MRModel](#MRModel) ⇐ <code>MREntity</code>
    * [.MRModel](#MRModel+MRModel)
        * [new exports.MRModel()](#new_MRModel+MRModel_new)
    * [.src()](#MRModel+src) ⇒ <code>string</code>
    * [.src()](#MRModel+src)
    * [.loadModel()](#MRModel+loadModel)
    * [.connected()](#MRModel+connected)
    * [.onLoad()](#MRModel+onLoad)

<a name="MRModel+MRModel"></a>

### mrModel.MRModel
**Kind**: instance class of [<code>MRModel</code>](#MRModel)  
<a name="new_MRModel+MRModel_new"></a>

#### new exports.MRModel()
Constructor for the Model entity, does the default.

<a name="MRModel+src"></a>

### mrModel.src() ⇒ <code>string</code>
Pair getter for the src property of <mr-model>. Important so that when a user tries
to run modelObject.src = `...` or perform something on modelObject.src it properly gets the html
attribute as expected instead of the pure js one.

note: we can do this because only htmlimageelement has a `src` property by default, not htmlimagelement,
and none of the above class extensions for Model have it as a defined property.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
**Returns**: <code>string</code> - the value of the src html attribute  
<a name="MRModel+src"></a>

### mrModel.src()
Setter for the src property of <mr-model>. Important so that when a user tries
to run modelObject.src = `...` it properly sets the html attribute as expected instead of the
pure js one.

note: we can do this because only htmlimageelement has a `src` property by default, not htmlimagelement,
and none of the above class extensions for Model have it as a defined property.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<a name="MRModel+loadModel"></a>

### mrModel.loadModel()
Async function that fills in this Model object based on src file information

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<a name="MRModel+connected"></a>

### mrModel.connected()
Callback function of MREntity - handles setting up this Model once it is connected to run as an entity component.
Includes loading up the model and associated data.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<a name="MRModel+onLoad"></a>

### mrModel.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>MRModel</code>](#MRModel)  
<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRModel.js' target='_blank'>Suggest an edit on GitHub for MRModel.js</a></div>
