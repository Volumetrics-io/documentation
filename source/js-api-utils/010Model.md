---
title: Model
---
# Model

<a name="model"></a>

## model : <code>object</code>
Useful namespace for helping with Model utility functions

**Kind**: global namespace  

* [model](#model) : <code>object</code>
    * [.loadDAE(filePath)](#model.loadDAE) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadFBX(filePath)](#model.loadFBX) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadGLTF(filePath)](#model.loadGLTF) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadSTL(filePath)](#model.loadSTL) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadUSDZ(filePath)](#model.loadUSDZ) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
    * [.loadModel(filePath, extension)](#model.loadModel) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>

<a name="model.loadDAE"></a>

### model.loadDAE(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads Collada file

**Kind**: static method of [<code>model</code>](#model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="model.loadFBX"></a>

### model.loadFBX(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads FBX file

**Kind**: static method of [<code>model</code>](#model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="model.loadGLTF"></a>

### model.loadGLTF(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads GLTF/GLB file

**Kind**: static method of [<code>model</code>](#model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="model.loadSTL"></a>

### model.loadSTL(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads stl file

**Kind**: static method of [<code>model</code>](#model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="model.loadUSDZ"></a>

### model.loadUSDZ(filePath) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
Loads USD/USDZ file

**Kind**: static method of [<code>model</code>](#model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |

<a name="model.loadModel"></a>

### model.loadModel(filePath, extension) ⇒ <code>Promise.&lt;THREE.Mesh&gt;</code>
The main loading function

**Kind**: static method of [<code>model</code>](#model)  
**Returns**: <code>Promise.&lt;THREE.Mesh&gt;</code> - - the promise of the loaded mesh object.  

| Param | Type | Description |
| --- | --- | --- |
| filePath | <code>string</code> | The path to the file(s) needing to be loaded. For now this only supports the full path and the relative path directly to the file. |
| extension | <code>string</code> | The extension of the file type. Current allowed extensions are `fbx`, `glb`, and `stl`. |

<div class='centered'><a href='https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Model.js' target='_blank'>Suggest an edit on GitHub for Model.js</a></div>
