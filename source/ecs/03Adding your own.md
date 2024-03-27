# Extending MRjs ECS for with your own Entities and Systems

## explanation of what to overwrite/extend and why && what we expose for people to extend/overwrite and why

## simple example walk through with a final product to show at the end

## words



# ----

moving notes from the what is page:

## Defining Custom Components & Systems in MRjs

A Component is defined whenever a custom `MRSystem` is created, which we create by extending the `MRSystem` class in JavaScript. 

If we were to create the Health system:

```js
class HealthSystem extends MRSystem {
    ...
}
```
That system would listen for whenever the `data-comp-health` attribute is added, updated, or removed from an entity.

### Setting and Getting Component Data.

A component and be attached to an entity in HTML:

```html
<mr-entity data-comp-health="stamina: 0.99; damage: 0.1;"></mr-entity>
```
You can also set and get components in JavaScript using the components API

```js
entity.components.set('health', {stamina: 0.99, damage: 0.1})

let healthComp = entity.components.get('health')

console.log('stamina', healthComp.stamina)

```
Each system has an `update` function that is called every frame. This function can be used to update the entities in the system's registry. 

```js
...
update(delta, time) {
    for(const entity of this.registry) {
        let healthComp = entity.components.get('health')

        healthComp.stamina -= healthComp.damage * 0.001

        entity.components.set('health', healthComp)
    }
}
...
```

There are also built-in functions that are called whenever a component is attached, detached, or updated. Check out the `MRSystems` docs to learn more.
