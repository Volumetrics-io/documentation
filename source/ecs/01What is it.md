# What is an Entity Component System?

At the heart of MRjs is an architecture known as an Entity Component Systems (ECS). This is an efficient, modular, and scalable architecture popularized by the gaming industry. 

In a single sentence:
- an Entity is a thing
- a Component is an attribute of a thing
- a System acts on all things with its matching Component 

It can be a little difficult to immediately pick up, so let's break it down piece-by-piece. 

## Entities

_An entity is a thing, and everything is a thing, so everything is an entity._

The closest comparison to an `mr-entity` is the `div` tag. On its own, a `div` is empty and invisible, but by applying CSS and JavaScript, you can create images, buttons, containers, and so on. You can also use them to group other elements together.

An entity works the same way, it's nothing on its own. It only becomes something when you attach components.

## Components

_A component is an attribute of a thing, so every entity has components._

Components "describe" an entity. They store data unique to the entity they are attached to. This data can range from position and rotation, to how hungry the entity is.

MRjs utilizes the data-attributes standard for the component element of its ECS. Each component begins with the `data-comp-` prefix.

## Systems

On their own, entities and components don't do much. They are just things with data. To do anything interesting, we need systems.

A system monitors and manipulates all entities that have its matching component. For instance, an "Energy" system would only care about entities that have an "Energy" component.

## How does this compare to Object-Oriented Programming (OOP)?

Obviously, you can combine ECS and OOP, MRjs does. But here are a couple of ways in which they differ.

### Flexibility

In many ways, the ECS is a lot more flexible. In OOP, each object of a given type is created using the same blueprint, and they all have the same attributes and duplicate logic. You can utilize inheritance to create variants of a given object, but that can become cumbersome. 

With ECS, you can create a unique object on the fly by attaching the components you need, and neatly organizing logic into Systems.

### Order

Systems are called in the order they were instanced, so you know at which point the logic for a given system will be called in the process. This allows you to design the flow of your application, making events more predictable.

### Single Threaded

ECS is designed to run on a single thread. This can be constraining, as one bad system can bring your application to a slowdown. So it's important to reduce complexity in your update functions, and utilize async for anything that can be done outside the main thread.
