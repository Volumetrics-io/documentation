<a name="Model"></a>

## Model : <code>object</code>
Useful namespace for helping with Model utility functions

**Kind**: global namespace  

* [Model](#Model) : <code>object</code>
    * [.loadDAE(filePath)](#Model.loadDAE) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadFBX(filePath)](#Model.loadFBX) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadGLTF(filePath)](#Model.loadGLTF) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadSTL(filePath)](#Model.loadSTL) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadUSDZ(filePath)](#Model.loadUSDZ) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadModel(filePath, extension)](#Model.loadModel) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>

<a name="Model.loadDAE"></a>

### Model.loadDAE(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads Collada file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadFBX"></a>

### Model.loadFBX(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads FBX file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadGLTF"></a>

### Model.loadGLTF(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads GLTF/GLB file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadSTL"></a>

### Model.loadSTL(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads stl file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadUSDZ"></a>

### Model.loadUSDZ(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads USD/USDZ file

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="Model.loadModel"></a>

### Model.loadModel(filePath, extension) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
The main loading function

**Kind**: static method of [<code>Model</code>](#Model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |
| extension | <code>string</code> | The extension of the file type. Current allowed extensions are `fbx`, `glb`, and `stl`. |

