# &lt;mr-skybox&gt;

`<mr-skybox>` creates a skybox that can be enabled or disabled, toggling between MR and VR.

## Example

```html
<mr-app>
    <mr-skybox src="…"></mr-skybox>
</mr-app>
```

## Definition and Usage

`<mr-skybox>` is used to create a very simple immersive environment for an immersive experience

`<mr-skybox>` has the following attributes:

* `src`: the src image file(s) to be applied to the skybox.
* `pathToTextures`: the foldering path to the image file(s).

## CSS option

If you set the background of <mr-app> in css it will load it up as a skybox into the scene.

```html
mr-app {
  background-image: url('/assets/textures/skybox_starmap_4k.jpg');
}
```

## Use Options

* singular `src`

```html
<mr-app>
    <mr-skybox src="path/to/textures/filename.jpg"></mr-skybox>
</mr-app>
```

* singular `src` using the `pathToTextures` folder setup

```html
<mr-app>
    <mr-skybox src="filename.jpg" pathToTextures="path/to/textures/"></mr-skybox>
</mr-app>
```

* multiple `src` files

```html
<mr-app>
    <mr-skybox src="path/to/textures/file0.jpg,path/to/textures/file1.jpg,path/to/textures/file2.jpg,path/to/textures/file3.jpg,path/to/textures/file4.jpg,path/to/textures/file5.jpg"></mr-skybox>
</mr-app>
```

* multiple `src` files using the `pathToTextures` folder setup

```html
<mr-app>
    <mr-skybox src="file0.jpg,file1.jpg,file2.jpg,file3.jpg,file4.jpg,file5.jpg" pathToTextures="path/to/textures/"></mr-skybox>
</mr-app>
```

This can either directly be a single skybox file or a listing of files of the form 
