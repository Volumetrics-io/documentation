<a name="MRHand"></a>

## MRHand
Class describing the MRHand object representing the UX of the hand object for MR interactions.

**Kind**: global class  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| pinch | <code>boolean</code> | Indicates if the hand is in a pinch gesture. |
| jointPhysicsBodies | <code>object</code> | Physics bodies associated with the hand joints. |
| identityPosition | <code>THREE.Vector3</code> | A reference position for the hand. |
| tempJointPosition | <code>THREE.Vector3</code> | Temporary storage for a joint's position. |
| tempJointOrientation | <code>THREE.Quaternion</code> | Temporary storage for a joint's orientation. |
| controllerModelFactory | <code>XRControllerModelFactory</code> | Factory for creating controller models. |
| handModelFactory | <code>XRHandModelFactory</code> | Factory for creating hand models. |
| mesh | <code>THREE.Mesh</code> | The 3D mesh representing the hand. |
| controller | <code>THREE.Object3D</code> | The controller object. |
| grip | <code>THREE.Object3D</code> | The grip associated with the controller. |
| hand | <code>THREE.Object3D</code> | The 3D object representing the hand. |
| model | <code>THREE.Object3D</code> | The model of the hand. |


* [MRHand](#MRHand)
    * [.MRHand](#MRHand+MRHand)
        * [new exports.MRHand(handedness, app)](#new_MRHand+MRHand_new)
    * [.initPhysicsBodies(app)](#MRHand+initPhysicsBodies)
    * [.update()](#MRHand+update)
    * [.pinchMoved()](#MRHand+pinchMoved)
    * [.updatePhysicsBodies()](#MRHand+updatePhysicsBodies)
    * [.setMesh()](#MRHand+setMesh)
    * [.onSelect(event)](#MRHand+onSelect)
    * [.getJointOrientation(jointName)](#MRHand+getJointOrientation) ⇒ <code>THREE.Quaternion</code>
    * [.getJointPosition(jointName)](#MRHand+getJointPosition) ⇒ <code>THREE.Vector3</code>
    * [.getCursorPosition()](#MRHand+getCursorPosition) ⇒ <code>number</code>

<a name="MRHand+MRHand"></a>

### mrHand.MRHand
**Kind**: instance class of [<code>MRHand</code>](#MRHand)  
<a name="new_MRHand+MRHand_new"></a>

#### new exports.MRHand(handedness, app)
Constructor for the MRHand class object. Setups up all attributes for MRHand including physics, mouse/cursor information, hand tracking and state, and model
information.


| Param | Type | Description |
| --- | --- | --- |
| handedness | <code>object</code> | enum for the `left`` or `right` hand. |
| app | <code>object</code> | the current MRApp that contains the scene for the hand. |

<a name="MRHand+initPhysicsBodies"></a>

### mrHand.initPhysicsBodies(app)
Initializes the physics bodies that the hand represents. Useful for collision detection and UX interactions in MR space.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  

| Param | Type | Description |
| --- | --- | --- |
| app | <code>object</code> | the current MRApp that contains the scene for the hand. |

<a name="MRHand+update"></a>

### mrHand.update()
Update function for the Hand object. Updates the physics bodies and checks whether a pinch has happened or is in progress in any way.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+pinchMoved"></a>

### mrHand.pinchMoved()
If a pinch happens, updates the MR cursor position while sending out an event that movement has occured from this hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+updatePhysicsBodies"></a>

### mrHand.updatePhysicsBodies()
Update function for the physics associated with this hand. Runs for every joint in the system and moves all elements of the hand model.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+setMesh"></a>

### mrHand.setMesh()
Handles the setMesh callback.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
<a name="MRHand+onSelect"></a>

### mrHand.onSelect(event)
Handles the onSelect event

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  

| Param | Type | Description |
| --- | --- | --- |
| event | <code>event</code> | the on pinch event object |

<a name="MRHand+getJointOrientation"></a>

### mrHand.getJointOrientation(jointName) ⇒ <code>THREE.Quaternion</code>
Gets the joint orientation of the named joint in the hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>THREE.Quaternion</code> - - the quaternion representation or the joint orientation.  

| Param | Type | Description |
| --- | --- | --- |
| jointName | <code>string</code> | the string name of the joint whose information is requested. |

<a name="MRHand+getJointPosition"></a>

### mrHand.getJointPosition(jointName) ⇒ <code>THREE.Vector3</code>
Gets the joint position of the named joint in the hand.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>THREE.Vector3</code> - - the position representation or the joint orientation.  

| Param | Type | Description |
| --- | --- | --- |
| jointName | <code>string</code> | the string name of the joint whose information is requested. |

<a name="MRHand+getCursorPosition"></a>

### mrHand.getCursorPosition() ⇒ <code>number</code>
Gets the expected cursor position of this hand based on the index finger and thumb's tip positions.

**Kind**: instance method of [<code>MRHand</code>](#MRHand)  
**Returns**: <code>number</code> - - the resolved position of the cursor.  
