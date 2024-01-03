<a name="Image"></a>

## Image ⇐ <code>MRDivEntity</code>
Base html image represented in 3D space. `mr-image`

**Kind**: global class  
**Extends**: <code>MRDivEntity</code>  

* [Image](#Image) ⇐ <code>MRDivEntity</code>
    * [.Image](#Image+Image)
        * [new exports.Image()](#new_Image+Image_new)
    * [.width()](#Image+width) ⇒ <code>number</code>
    * [.height()](#Image+height) ⇒ <code>number</code>
    * [.connected()](#Image+connected)
    * [.updateStyle()](#Image+updateStyle)
    * [.mutated(mutation)](#Image+mutated)
    * [.computeObjectFitDimensions()](#Image+computeObjectFitDimensions)
    * [.cover(texture, aspect)](#Image+cover)

<a name="Image+Image"></a>

### image.Image
**Kind**: instance class of [<code>Image</code>](#Image)  
<a name="new_Image+Image_new"></a>

#### new exports.Image()
Constructs a base image entity using a UIPlane and other 3D elements as necessary.

<a name="Image+width"></a>

### image.width() ⇒ <code>number</code>
Calculates the width of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>Image</code>](#Image)  
**Returns**: <code>number</code> - - the resolved width  
<a name="Image+height"></a>

### image.height() ⇒ <code>number</code>
Calculates the height of the img based on the img tag in the shadow root

**Kind**: instance method of [<code>Image</code>](#Image)  
**Returns**: <code>number</code> - - the resolved height  
<a name="Image+connected"></a>

### image.connected()
Callback function of MREntity - handles setting up this Image and associated 3D geometry style (from css) once it is connected to run as an entity component.

**Kind**: instance method of [<code>Image</code>](#Image)  
<a name="Image+updateStyle"></a>

### image.updateStyle()
Updates the style for the Image's border and background based on compStyle and inputted css elements.

**Kind**: instance method of [<code>Image</code>](#Image)  
<a name="Image+mutated"></a>

### image.mutated(mutation)
Callback function of MREntity - Updates the image's cover,fill,etc based on the mutation request.

**Kind**: instance method of [<code>Image</code>](#Image)  

| Param | Type | Description |
| --- | --- | --- |
| mutation | <code>object</code> | the update/change/mutation to be handled. |

<a name="Image+computeObjectFitDimensions"></a>

### image.computeObjectFitDimensions()
computes the width and height values considering the value of object-fit

**Kind**: instance method of [<code>Image</code>](#Image)  
<a name="Image+cover"></a>

### image.cover(texture, aspect)
Calculates the texture UV transformation change based on the image's aspect ratio.

**Kind**: instance method of [<code>Image</code>](#Image)  

| Param | Type | Description |
| --- | --- | --- |
| texture | <code>object</code> | the texture to augment |
| aspect | <code>number</code> | a given expected aspect ratio |

