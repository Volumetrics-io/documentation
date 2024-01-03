<a name="SkyBox"></a>

## SkyBox ⇐ <code>MREntity</code>
The skybox entity that allows users to give multiple images to pattern into the 3D background space. `mr-skybox`

**Kind**: global class  
**Extends**: <code>MREntity</code>  

* [SkyBox](#SkyBox) ⇐ <code>MREntity</code>
    * [.SkyBox](#SkyBox+SkyBox)
        * [new exports.SkyBox()](#new_SkyBox+SkyBox_new)
    * [.connected()](#SkyBox+connected)
    * [.onLoad()](#SkyBox+onLoad)

<a name="SkyBox+SkyBox"></a>

### skyBox.SkyBox
**Kind**: instance class of [<code>SkyBox</code>](#SkyBox)  
<a name="new_SkyBox+SkyBox_new"></a>

#### new exports.SkyBox()
Constructor for skybox - defaults to the usual impl of an Entity.

<a name="SkyBox+connected"></a>

### skyBox.connected()
Callback function of MREntity - handles setting up this Surface once it is connected to run as an entity component.

**Kind**: instance method of [<code>SkyBox</code>](#SkyBox)  
<a name="SkyBox+onLoad"></a>

### skyBox.onLoad()
On load event function - right now defaults to do nothing.

**Kind**: instance method of [<code>SkyBox</code>](#SkyBox)  
