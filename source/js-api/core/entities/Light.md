<a name="Light"></a>

## Light ⇐ <code>MREntity</code>
Represents lights in 3D space. `mr-light`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [Light](#Light) ⇐ <code>MREntity</code>
    * [.Light](#Light+Light)
        * [new exports.Light()](#new_Light+Light_new)
    * [.connected()](#Light+connected)
    * [.mutated(mutation)](#Light+mutated)

<a name="Light+Light"></a>

### light.Light
**Kind**: instance class of [<code>Light</code>](#Light)  
<a name="new_Light+Light_new"></a>

#### new exports.Light()
Constructs the base 3D object.

<a name="Light+connected"></a>

### light.connected()
Callback function of MREntity - handles setting up this Light once it is connected to run as an entity component.

**Kind**: instance method of [<code>Light</code>](#Light)  
<a name="Light+mutated"></a>

### light.mutated(mutation)
Callback function of MREntity - Updates the lights color and intensity as requested.

**Kind**: instance method of [<code>Light</code>](#Light)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

