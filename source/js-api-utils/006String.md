---
title: String
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/String.js
---
# String

<a name="string"></a>

## string : <code>object</code>
Useful namespace for helping with String utility functions

**Kind**: global namespace  

* [string](#string) : <code>object</code>
    * [.stringToJson(attrString)](#string.stringToJson) ⇒ <code>object</code>
    * [.jsonToString(componentData)](#string.jsonToString) ⇒ [<code>string</code>](#string)
    * [.stringToVector(str)](#string.stringToVector) ⇒ <code>object</code>
    * [.stringToDegVector(str)](#string.stringToDegVector) ⇒ <code>object</code>
    * [.stringToDimensionValue(val)](#string.stringToDimensionValue) ⇒ <code>number</code>

<a name="string.stringToJson"></a>

### string.stringToJson(attrString) ⇒ <code>object</code>
Converts and formats the inputted string to a json object.

**Kind**: static method of [<code>string</code>](#string)  
**Returns**: <code>object</code> - - object in json form  

| Param | Type | Description |
| --- | --- | --- |
| attrString | [<code>string</code>](#string) | the string to be formatted |

<a name="string.jsonToString"></a>

### string.jsonToString(componentData) ⇒ [<code>string</code>](#string)
Converts and formats the inputted json object into a string.

**Kind**: static method of [<code>string</code>](#string)  
**Returns**: [<code>string</code>](#string) - - the string representation of the json object  

| Param | Type | Description |
| --- | --- | --- |
| componentData | <code>object</code> | the json object to be formatted into a string |

<a name="string.stringToVector"></a>

### string.stringToVector(str) ⇒ <code>object</code>
Converts a string to vector format.

**Kind**: static method of [<code>string</code>](#string)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | [<code>string</code>](#string) | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="string.stringToDegVector"></a>

### string.stringToDegVector(str) ⇒ <code>object</code>
Converts a string to vector format where the numbers are pre-converted from radians to degrees.

**Kind**: static method of [<code>string</code>](#string)  
**Returns**: <code>object</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| str | [<code>string</code>](#string) | the string to be converted to a vector. Must be of format 'xx xxx xx...'. |

<a name="string.stringToDimensionValue"></a>

### string.stringToDimensionValue(val) ⇒ <code>number</code>
Converts a string to vector format where the numbers are pre-converted from a number to an appropriate representation

**Kind**: static method of [<code>string</code>](#string)  
**Returns**: <code>number</code> - - the vector version of the inputted string.  

| Param | Type | Description |
| --- | --- | --- |
| val | [<code>string</code>](#string) | the string to be converted to a vector. Must be of format 'x%' or 'x/y'. |

