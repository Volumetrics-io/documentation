---
title: BoundaryVisibilitySystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/BoundaryVisibilitySystem.js
---
# BoundaryVisibilitySystem

## Classes

<dl>
<dt><a href="#BoundaryVisibilitySystem">BoundaryVisibilitySystem</a> ⇐ <code>MRSystem</code></dt>
<dd><p>Makes the entities invisible if they are outside of their parent panels</p>
</dd>
</dl>

## Functions

<dl>
<dt><a href="#observe">observe(root, target)</a></dt>
<dd><p>Observe a target MRDivEntity and make the associated object visible only if it is in visible position in a root MRDivEntity</p>
</dd>
</dl>

<a name="BoundaryVisibilitySystem"></a>

## BoundaryVisibilitySystem ⇐ <code>MRSystem</code>
Makes the entities invisible if they are outside of their parent panels

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [BoundaryVisibilitySystem](#BoundaryVisibilitySystem) ⇐ <code>MRSystem</code>
    * [.BoundaryVisibilitySystem](#BoundaryVisibilitySystem+BoundaryVisibilitySystem)
        * [new exports.BoundaryVisibilitySystem()](#new_BoundaryVisibilitySystem+BoundaryVisibilitySystem_new)
    * [.onNewEntity(entity)](#BoundaryVisibilitySystem+onNewEntity)

<a name="BoundaryVisibilitySystem+BoundaryVisibilitySystem"></a>

### boundaryVisibilitySystem.BoundaryVisibilitySystem
**Kind**: instance class of [<code>BoundaryVisibilitySystem</code>](#BoundaryVisibilitySystem)  
<a name="new_BoundaryVisibilitySystem+BoundaryVisibilitySystem_new"></a>

#### new exports.BoundaryVisibilitySystem()
BoundaryVisibilitySystem's default constructor.

<a name="BoundaryVisibilitySystem+onNewEntity"></a>

### boundaryVisibilitySystem.onNewEntity(entity)
Called when a new entity is added to the scene.

**Kind**: instance method of [<code>BoundaryVisibilitySystem</code>](#BoundaryVisibilitySystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity being added. |

<a name="observe"></a>

## observe(root, target)
Observe a target MRDivEntity and make the associated object visible only if it is in visible position in a root MRDivEntity

**Kind**: global function  

| Param | Type | Description |
| --- | --- | --- |
| root | <code>MRDivEntity</code> | the root object being compared against |
| target | <code>MRDivEntity</code> | the target object for which we're determining visiblity. |

