# &lt;events&gt;

## mr.js Events

### `enterXR`

Triggered when the XR session is initialized. this is useful for when dealing with XR exclusive features, such as hit testing, accessing the scene mesh or planes.

origin: `mr-app`

### `exitXR`

Triggered when the session is ended. Useful for when you'd like to save XR state, or when app-specific content needs to be reconfigured for a 2D window.

origin: `mr-app`

### `new-entity`

Triggered whenever an entity is created.

origin: the created element

## Interaction Events

### `selectstart`

Triggered via the controller trigger is pressed a pinch gesture is performed.

origin: `document`

detail:

- `handedness`: `left` or `right`
- `position`: a THREE.js Vector3 of the pinch/controller position


### `selectmoved`

Triggered when the controller trigger or pinch is held.

origin: `document`

detail:

- `handedness`: `left` or `right`
- `position`: a THREE.js Vector3 of the pinch/controller position

### `selectend`

Triggered when the controller trigger or pinch is released.

origin: `document`

detail:

- `handedness`: `left` or `right`
- `position`: a THREE.js Vector3 of the pinch/controller position

### `hover-start`

Triggered when the cursor or the users finger begins hovering over an entity.

the `hover` CSS class is added to the entity when this event is triggered

origin: the target element

detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position


### `hover-end`

Triggered when the cursor or the users finger stops hovering over an entity

the `hover` CSS class is removed to the entity when this event is triggered

origin: the target element

### `touch-start`

Triggered whened the controller trigger is pulled, a pinch gesture occurs, or the user touches an entity.

origin: the target element

detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position

### `touch`

origin: the target element

detail:

- `worldPosition`: a THREE.js Vector3 of the hover world position
- `position`: a THREE.js Vector3 of the local hover position
- `delta`: a THREE.js Vector3 of the delta between the the current local position and the last


### `touch-end`

Triggered whened the controller trigger or pinch is released, or the user stops touching an entity.

origin: the target element