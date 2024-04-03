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

## `hoverstart`

Triggered when the cursor or the users' finger begins hovering over an entity.

The `hover` CSS class is added to the entity when this event is triggered.

Origin: the target element

Detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position

## `hoverend`

Triggered when the cursor or the users' finger stops hovering over an entity.

The `hover` CSS class is removed to the entity when this event is triggered.

Origin: the target element

## `touchstart`

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

??? do we still use this?

## `touchmove`

???


## `touchend`

Triggered whenever the controller's trigger button or pinch gesture is released, or when the user stops touching an entity.

Origin: the target element
