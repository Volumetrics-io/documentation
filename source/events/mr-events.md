---
description: "An introduction to the Event system in MRjs"
---
# MRjs Events

## `enterXR`

Triggered when the XR session is initialized. This is useful when dealing with XR exclusive features, such as hit testing, accessing the scene mesh or planes.

Origin: `mr-app`

## `exitXR`

Triggered when the XR session is ended. This is useful when you'd like to save the XR state, or when application-specific content needs to be reconfigured for a 2D window.

Origin: `mr-app`

## `new-entity`

Triggered whenever an entity is created.

Origin: the created element
