<a name="Model"></a>

## Model ⇐ <code>MREntity</code>
Loads in any supported 3D model type to the requested location. `mr-model`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [Model](#Model) ⇐ <code>MREntity</code>
    * [.Model](#Model+Model)
        * [new exports.Model()](#new_Model+Model_new)
    * [.connected()](#Model+connected)
    * [.onLoad()](#Model+onLoad)

<a name="Model+Model"></a>

### model.Model
**Kind**: instance class of [<code>Model</code>](#Model)  
<a name="new_Model+Model_new"></a>

#### new exports.Model()
Constructor for the Model entity, does the default.

<a name="Model+connected"></a>

### model.connected()
Callback function of MREntity - handles setting up this Model once it is connected to run as an entity component.
Includes loading up the model and associated data.

**Kind**: instance method of [<code>Model</code>](#Model)  
<a name="Model+onLoad"></a>

### model.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>Model</code>](#Model)  
