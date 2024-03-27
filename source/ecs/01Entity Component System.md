# Entity Component System

At the heart of MRjs is an architecture known as an Entity Component Systems (ECS). This is an efficient, modular, and scalable architecture popularized by the gaming industry. 

In a single sentence, an Entity is a thing, a Component is an attribute of a thing, and a System acts on all things with its matching Component. 

It can be a little difficult to immediately pick up, so let's break it down piece-by-piece. 

## Entities

_An entity is a thing, and everything is a thing, so everything is an entity._

The closest comparison to an `mr-entity` is the `div` tag. On its own, a `div` is empty and invisible, but by applying CSS and JavaScript, you can create images, buttons, containers, and so on. You can also use them to group other elements together.

An entity works the same way, it's nothing on its own. It only becomes something when you attach components.

## Components

Components "describe" an entity. They store data unique to the entity they are attached to. This data can range from position and rotation, to how hungry the entity is.

MRjs utilizes the data-attributes standard for the component element of its ECS. Each component begins with the `data-comp-` prefix.

## Systems

On their own, entities and components don't do much. They are just things with data. To do anything interesting, we need systems.

A system monitors and manipulates all entities that have its matching component. For instance, an "Energy" system would only care about entities that have an "Energy" component.

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

## How does this compare to Object-Oriented Programming (OOP)?

Obviously, you can combine ECS and OOP, MRjs does. But here are a couple of ways in which they differ.

### Flexibility

In many ways, the ECS is a lot more flexible. In OOP, each object of a given type is created using the same blueprint, and they all have the same attributes and duplicate logic. You can utilize inheritance to create variants of a given object, but that can become cumbersome. 

With ECS, you can create a unique object on the fly by attaching the components you need, and neatly organizing logic into Systems.

### Order

Systems are called in the order they were instanced, so you know at which point the logic for a given system will be called in the process. This allows you to design the flow of your application, making events more predictable.

### Single Threaded

ECS is designed to run on a single thread. This can be constraining, as one bad system can bring your application to a slowdown. So it's important to reduce complexity in your update functions, and utilize async for anything that can be done outside the main thread.
