<a name="StringUtils"></a>

## StringUtils : <code>object</code>
Useful namespace for helping with String utility functions

**Kind**: global namespace  

* [StringUtils](#StringUtils) : <code>object</code>
    * [.stringToJson(attrString)](#StringUtils.stringToJson) ⇒ <code>object</code>
    * [.jsonToString(componentData)](#StringUtils.jsonToString) ⇒ <code>string</code>
    * [.stringToVector(str)](#StringUtils.stringToVector) ⇒ <code>object</code>
    * [.stringToDegVector(str)](#StringUtils.stringToDegVector) ⇒ <code>object</code>
    * [.stringToDimensionValue(val)](#StringUtils.stringToDimensionValue) ⇒ <code>number</code>

<a name="StringUtils.stringToJson"></a>

### StringUtils.stringToJson(attrString) ⇒ <code>object</code>
Converts and formats the inputted string to a json object.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - object in json form  

| Param | Type | Description |
| --- | --- | --- |
| attrString | <code>string</code> | the string to be formatted |

<a name="StringUtils.jsonToString"></a>

### StringUtils.jsonToString(componentData) ⇒ <code>string</code>
Converts and formats the inputted json object into a string.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>string</code> - - the string representation of the json object  

| Param | Type | Description |
| --- | --- | --- |
| componentData | <code>object</code> | the json object to be formatted into a string |

<a name="StringUtils.stringToVector"></a>

### StringUtils.stringToVector(str) ⇒ <code>object</code>
Converts a string to vector format.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | <code>string</code> | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="StringUtils.stringToDegVector"></a>

### StringUtils.stringToDegVector(str) ⇒ <code>object</code>
Converts a string to vector format where the numbers are pre-converted from radians to degrees.

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | <code>string</code> | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="StringUtils.stringToDimensionValue"></a>

### StringUtils.stringToDimensionValue(val) ⇒ <code>number</code>
Converts a string to vector format where the numbers are pre-converted from a number to an appropriate representation

**Kind**: static method of [<code>StringUtils</code>](#StringUtils)  
**Returns**: <code>number</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>string</code> | the string to be converted to a vector. Must be of format 'x%' or 'x/y'. |

