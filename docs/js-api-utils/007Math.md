---
title: Math
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Math.js
---
# Math

<a name="math"></a>

## math : <code>object</code>
Useful namespace for helping with Math utility functions including numerical, 3d, etc.

**Kind**: global namespace  

* [math](#math) : <code>object</code>
    * [.roundTo(val, decimal)](#math.roundTo) ⇒ <code>number</code>
    * [.roundVectorTo(vector, decimal)](#math.roundVectorTo)
    * [.radToDeg(val)](#math.radToDeg) ⇒ <code>number</code>
    * [.computeBoundingSphere(group, relativeTo)](#math.computeBoundingSphere) ⇒ <code>THREE.Sphere</code>

<a name="math.roundTo"></a>

### math.roundTo(val, decimal) ⇒ <code>number</code>
Rounds the inputted val to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>math</code>](#math)  
**Returns**: <code>number</code> - - The rounded number to the requested decimal amount.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(832.456, 10) = 832.4; roundTo(832.456, 1000) = 832.456; roundTo(832.456, 0.01) = 800;
```
<a name="math.roundVectorTo"></a>

### math.roundVectorTo(vector, decimal)
Rounds the inputted vector to the nearest decimal place as denoted by the decimal parameter.

**Kind**: static method of [<code>math</code>](#math)  

| Param | Type | Description |
| --- | --- | --- |
| vector | <code>vector</code> | The vector of numbers to be rounded. |
| decimal | <code>number</code> | The decimal place targeted in the rounding. |

**Example**  
```js
For example: roundTo(<832.456, 92.10003, 23452.1>, 10) = <832.4, 92.1, 2342.1>;
```
<a name="math.radToDeg"></a>

### math.radToDeg(val) ⇒ <code>number</code>
Performs the radian To Degree calculation commonly used in math.
https://en.wikipedia.org/wiki/Degree_(angle) https://en.wikipedia.org/wiki/Radian

**Kind**: static method of [<code>math</code>](#math)  
**Returns**: <code>number</code> - - the calculated degree representation of val.  

| Param | Type | Description |
| --- | --- | --- |
| val | <code>number</code> | The number to be converted from radians to degrees |

<a name="math.computeBoundingSphere"></a>

### math.computeBoundingSphere(group, relativeTo) ⇒ <code>THREE.Sphere</code>
Computes the bounding sphere of an inputted three group object.

**Kind**: static method of [<code>math</code>](#math)  
**Returns**: <code>THREE.Sphere</code> - - the resolved bounding sphere  

| Param | Type | Description |
| --- | --- | --- |
| group | <code>THREE.group</code> | the group to be enclosed in the bounding sphere. |
| relativeTo | <code>THREE.group</code> | object that the group is relative to. For example if the group is an apple held in a character's hand, relativeTo would be the characters hand. When left as null, the bounding sphere defaults to the inputted groups original world matrix. |

