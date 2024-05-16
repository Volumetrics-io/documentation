---
title: StatsSystem
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/componentSystems/StatsSystem.js
---
# StatsSystem

<a name="StatsSystem"></a>

## StatsSystem ⇐ <code>MRSystem</code>
Track the elapsed time across frames and update the fps counter periodically for `mr-stats`.

**Kind**: global class  
**Extends**: <code>MRSystem</code>  

* [StatsSystem](#StatsSystem) ⇐ <code>MRSystem</code>
    * [.StatsSystem](#StatsSystem+StatsSystem)
        * [new exports.StatsSystem()](#new_StatsSystem+StatsSystem_new)
    * [.onNewEntity(entity)](#StatsSystem+onNewEntity)
    * [.update(deltaTime)](#StatsSystem+update)

<a name="StatsSystem+StatsSystem"></a>

### statsSystem.StatsSystem
**Kind**: instance class of [<code>StatsSystem</code>](#StatsSystem)  
<a name="new_StatsSystem+StatsSystem_new"></a>

#### new exports.StatsSystem()
StatsSystem's default constructor

<a name="StatsSystem+onNewEntity"></a>

### statsSystem.onNewEntity(entity)
Registers MRStatsEntity

**Kind**: instance method of [<code>StatsSystem</code>](#StatsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| entity | <code>MREntity</code> | given entity that might be handled by this system |

<a name="StatsSystem+update"></a>

### statsSystem.update(deltaTime)
Tracks the elapsed time and updates the fps counter periodically.

**Kind**: instance method of [<code>StatsSystem</code>](#StatsSystem)  

| Param | Type | Description |
| --- | --- | --- |
| deltaTime | <code>number</code> | the time elapsed since the last update call |

