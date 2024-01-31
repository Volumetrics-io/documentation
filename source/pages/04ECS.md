# &lt;ECS&gt;

At the heart of mrjs is an architecture known as an Entity Component Systems (ECS). This is an efficient, modular, and scalable architecture popularized by the gaming industry. 

in a single sentence, an Entity is a things, A Component is an attribute of a thing, and a System acts on all things with it's matching Component. 

It can be a little difficult to immediately pick up, so let's break it down piece-by-piece. 

## Entities

_An entity is a thing, and everything is a thing, so everything is an entity._

The closest comparison to an `mr-entity` is the `div` tag. on it's own, a `div` is empty and invisble, but by applying CSS & JS, you can create images, buttons, containers, and so on. You can also use them to group other elements together.

An entity works the same way, it's nothing on its own. It only becomes something when you attach components.

## Components

Components "describe" an entity. They're used to store data unique to the entity they're attached to. This data can range from position and rotation, to how hungry the entity is.

mrjs utilizes the data-attributes standard for the Component element of it's ECS, each compone begins with the `data-comp-` prefix.

## Systems

On their own, Entities and components don't do much, they're just things with data. In order to do anything interesting, we need systems.

A system monitors and manipulates all entities that have it's matching component. For instance, an Energy System would only cares about entities that have an Energy Component.

## Defining Custom Components & Systems in mrjs

A Component is defined whenever a custom `MRSystem` is created, which we create by extending the MRSystem class in JavaScript. 

If we were to create the Health System:

```js
class HealthSystem extends MRSystem {
    ...
}
```
That System would listen for whenever the `data-comp-health` attribute is added, updated, or removed from an entity.

### Setting and Getting Component Data.

A component and be attached to an entity in HTML:

```html
<mr-entity data-comp-health="stamina: 0.99; damage: 0.1;"></mr-entity>
```
You can also set and get components in javascript using the components API

```js
entity.components.set('health', {stamina: 0.99, damage: 0.1})

let healthComp = entity.components.get('health')

console.log('stamina', healthComp.stamina)

```
Each System has an `update` function that is called every frame. This function can be used to update the entities in the system's registry. 

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

there are also built in functions that are called whenever a component is attached, detached, or updated. Checkout the MRSystems docs to learn more.

## How does this compare to OOP?

Obviously you can combine ECS and OOP, we do. But here are a couple ways in which they differ.

### Flexibility

In many ways, the ECS is a lot more flexible. In OOP, each Object of a given type is created using the same blue print, and they all have the same attributes and duplicate logic. You can utilize inheritence to create variants of a given object, but that can become cumbersome. 

with ECS, you can create unique "objects" on the fly by attaching the components you need, and neatly organizing logic into Systems.

### Order

Systems are called in the order they were instance, so you know at which point the logic for a given System will be called in the process. This allows you to design the flow of your application, making events more predictable.

### Single Threaded

ECS is designed to run on a single thread, this can be constraining as one bad system can bring the your application to a slow down. So it's important to reduce complexity in your update functions, and utlize async for anything that can be done outside of the main thread.