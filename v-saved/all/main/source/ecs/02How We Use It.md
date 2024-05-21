# How do we use ECS in MRjs?

<!-- ## Diagram

todotodotodotodotodo

todotodotodotodotodo

todotodotodotodotodo

todotodotodotodotodo -->

### Entity Component System

MRjs is designed from the ground up using the Entity-Component-System Architecture. This is a common architecture implemented by Game Engines such as Unity, Unreal, and RealityKit.

#### Entity

An Entity is an object. It stores only the most fundamental data, such as a unique identifier, a THREE.js Object3D, a physics body, and dimension data such as width and scale.

Any `mr-*` tag within the `mr-app` is an Entity. `mr-entity` is the spatial equivalent of a `div`.

Creating a custom Entity is as simple as creating a Custom Element via the Web Components API.

Example:

```js
class Spacecraft extends MREntity {
    constructor(){
        this.object3D = this.generateSpacecraft()
    }

    // function to procedurally generate a 3D spacecraft
    generateSpacecraft(){
        ...
    }
}

customElements.get('mr-spacecraft') || customElements.define('mr-spacecraft', Spacecraft)
```

#### Systems

A System contains logic that is applied to all entities that have a corresponding Component, using the data stored by the component. Unlike Entities & Components, Systems have no HTML representation and are implemented entirely in JavaScript.

When a component is attached to or detached from an entity, it is added or removed from its System's registry of entities.

Example:

```js
class OrbitSystem extends MRSystem{
    constructor(){
        super()
    }

    // called every frame
    update(deltaTime, frame) {
        for(const entity in this.registry) {
            // Update entity position
            let component = entity.components.get('orbit')
            component.radius
            component.target
            //...
            entity.component.set('orbit', { speed : 1 })
        }
    }

    // Called when an orbit component is attached
    attachedComponent(entity) {
        //...
    }


    // do something when an orbit component is updated
    updatedComponent(entity, oldData) {
        //...
    }

    // do something when an orbit component is detached
    detachedComponent(entity) {
        //...
    }
}
```

When you define a custom system, it listens for events triggered when the System's corresponding component is attached, updated, or detached. In the above case, `data-comp-orbit`.

#### Components

Components are attached to entities and used to store data. In MRjs they are implemented using data attributes beginning with the prefix `data-comp-`.

Example:

```html
<mr-spacecraft data-comp-orbit="radius: 0.5; target: #user;"></mr-spacecraft>
```

Note: the mapping between components and systems is 1-to-1, and the naming convention (`data-comp-<name>` and `<Name>System`) is strictly enforced.

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

