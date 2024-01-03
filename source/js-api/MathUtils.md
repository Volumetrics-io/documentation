<a name="MathUtils"></a>

## MathUtils : <code>object</code>
Useful namespace for helping with Math utility functions

**Kind**: global namespace  

* [MathUtils](#MathUtils) : <code>object</code>
    * [.roundTo(val, decimal)](#MathUtils.roundTo) ⇒ <code>number</code>
    * [.roundVectorTo(vector, decimal)](#MathUtils.roundVectorTo)
    * [.radToDeg(val)](#MathUtils.radToDeg) ⇒ <code>number</code>

<a name="MathUtils.roundTo"></a>

### MathUtils.roundTo(val, decimal) ⇒ <code>number</code>
Rounds the inputted val to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  
**Returns**: <code>number</code> - - The rounded number to the requested decimal amount.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(832.456, 10) = 832.4; roundTo(832.456, 1000) = 832.456; roundTo(832.456, 0.01) = 800;
```
<a name="MathUtils.roundVectorTo"></a>

### MathUtils.roundVectorTo(vector, decimal)
Rounds the inputted vector to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  

| Param | Type | Description |
| --- | --- | --- |
| vector | <code>vector</code> | The vector of numbers to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(<832.456, 92.10003, 23452.1>, 10) = <832.4, 92.1, 2342.1>;
```
<a name="MathUtils.radToDeg"></a>

### MathUtils.radToDeg(val) ⇒ <code>number</code>
Performs the radian To Degree calculation commonly used in math.
https://en.wikipedia.org/wiki/Degree_(angle) https://en.wikipedia.org/wiki/Radian

**Kind**: static method of [<code>MathUtils</code>](#MathUtils)  
**Returns**: <code>number</code> - - the calculated degree representation of val.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be converted from radians to degrees |

