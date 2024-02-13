---
title: MathUtils
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/MathUtils.js
---
# MathUtils

<a name="mathUtils"></a>

## mathUtils : <code>object</code>
Useful namespace for helping with Math utility functions

**Kind**: global namespace  

* [mathUtils](#mathUtils) : <code>object</code>
    * [.roundTo(val, decimal)](#mathUtils.roundTo) ⇒ <code>number</code>
    * [.roundVectorTo(vector, decimal)](#mathUtils.roundVectorTo)
    * [.radToDeg(val)](#mathUtils.radToDeg) ⇒ <code>number</code>

<a name="mathUtils.roundTo"></a>

### mathUtils.roundTo(val, decimal) ⇒ <code>number</code>
Rounds the inputted val to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>mathUtils</code>](#mathUtils)  
**Returns**: <code>number</code> - - The rounded number to the requested decimal amount.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(832.456, 10) = 832.4; roundTo(832.456, 1000) = 832.456; roundTo(832.456, 0.01) = 800;
```
<a name="mathUtils.roundVectorTo"></a>

### mathUtils.roundVectorTo(vector, decimal)
Rounds the inputted vector to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>mathUtils</code>](#mathUtils)  

| Param | Type | Description |
| --- | --- | --- |
| vector | <code>vector</code> | The vector of numbers to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(<832.456, 92.10003, 23452.1>, 10) = <832.4, 92.1, 2342.1>;
```
<a name="mathUtils.radToDeg"></a>

### mathUtils.radToDeg(val) ⇒ <code>number</code>
Performs the radian To Degree calculation commonly used in math.
https://en.wikipedia.org/wiki/Degree_(angle) https://en.wikipedia.org/wiki/Radian

**Kind**: static method of [<code>mathUtils</code>](#mathUtils)  
**Returns**: <code>number</code> - - the calculated degree representation of val.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be converted from radians to degrees |

