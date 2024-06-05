---
title: MRElement
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/MRElement.js
---
# MRElement

<a name="MRElement"></a>

## MRElement ⇐ <code>HTMLElement</code>
The first step in MRjs extending an HTMLElement. Used as a base for both `mr-app` and `mr-entity`.

**Kind**: global class  
**Extends**: <code>HTMLElement</code>  

* [MRElement](#MRElement) ⇐ <code>HTMLElement</code>
    * [.MRElement](#MRElement+MRElement)
        * [new exports.MRElement()](#new_MRElement+MRElement_new)
    * [.add(entity)](#MRElement+add)
    * [.removeEntity(entity)](#MRElement+removeEntity)

<a name="MRElement+MRElement"></a>

### mrElement.MRElement
**Kind**: instance class of [<code>MRElement</code>](#MRElement)  
<a name="new_MRElement+MRElement_new"></a>

#### new exports.MRElement()
Constructs the basic information needed to separate an `MRElement` from an `HTMLElement`.

<a name="MRElement+add"></a>

### mrElement.add(entity)
Adding an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRElement</code>](#MRElement)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity to be added. |

<a name="MRElement+removeEntity"></a>

### mrElement.removeEntity(entity)
Removing an entity as a sub-object of this entity.

**Kind**: instance method of [<code>MRElement</code>](#MRElement)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>object</code> | the entity to be removed. |

