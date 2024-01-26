# &lt;mr-model&gt;

`<mr-model>` is used to load 3D model files.

## Example

```html
<mr-app>
    <mr-model src="…"></mr-model>
</mr-app>
```

## Definition and Usage

`<mr-model>` has one required attribute:

* `src`: the path to the target model file

## Supported file types

* Check the [allowed extensions](https://docs.mrjs.io/javascript-api/#model.loadmodelfilepath-extension-promise.three.mesh) from the Model.loadModel function
* The current supported list is: `fbx`, `glb`, and `stl`
