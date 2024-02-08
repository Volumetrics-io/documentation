---
description: "An introduction to the Event system in mrjs"
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

# Interaction Events

## `selectstart`

Triggered via the controller's trigger button is pressed, or a pinch gesture is performed.

Origin: `document`

Detail:

- `handedness`: `left` or `right`
- `position`: a THREE.js Vector3 of the pinch/controller position

## `selectmoved`

Triggered when the controller's trigger button, or a pinch gesture is held.

Origin: `document`

Detail:

- `handedness`: `left` or `right`
- `position`: a THREE.js Vector3 of the pinch/controller position

## `selectend`

Triggered when the controller's trigger button, or a pinch gesture is released.

Origin: `document`

Detail:

- `handedness`: `left` or `right`
- `position`: a THREE.js Vector3 of the pinch/controller position

## `hover-start`

Triggered when the cursor or the users' finger begins hovering over an entity.

The `hover` CSS class is added to the entity when this event is triggered.

Origin: the target element

Detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position

## `hover-end`

Triggered when the cursor or the users' finger stops hovering over an entity.

The `hover` CSS class is removed to the entity when this event is triggered.

Origin: the target element

## `touch-start`

Triggered whenever the controller's trigger button is pushed, a pinch gesture occurs, or the user touches an entity.

Origin: the target element

Detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position

## `touch`

Origin: the target element

Detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position
- `delta`: a THREE.js Vector3 of the delta between the current local position and the last

## `touch-end`

Triggered whenever the controller's trigger button or pinch gesture is released, or when the user stops touching an entity.

Origin: the target element
