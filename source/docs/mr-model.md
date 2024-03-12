# &lt;mr-model&gt;

`<mr-model>` is used to load 3D model files.

## Example

<inline-repl editor-height="280">
    <slot slot="html">
        <mr-app>
            <mr-panel>
                <mr-model id="koi" src="/static/sample/koi.glb" data-comp-animation="clip: 0; action: play;" ></mr-model>
                <!-- Model by https://sketchfab.com/7plus -->
                <mr-light color="white" intensity="0.1" data-position="0 0.3 0.1"></mr-light>
                <mr-light color="LightSkyBlue" intensity="0.5" data-position="0 -0.15 0.25"></mr-light>
            </mr-panel>
        </mr-app>
    </slot>
    <slot slot="css">
        mr-panel {
            background-color: LightSkyBlue;
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        #koi {
            scale: 0.05;
            z-index: 70;
        }
    </slot>
</inline-repl>

## Definition and Usage

`<mr-model>` has one required attribute:

* `src`: the path to the target model file

## Supported file types

* Check out the [allowed extensions](https://docs.mrjs.io/javascript-api/#model.loadmodelfilepath-extension-promise.three.mesh) from the Model.loadModel function
* The current supported list is: `fbx`, `glb`, and `stl`

## Anchoring 3D elements

3D elements can flow alongside with text inside an `<mr-panel>`

<inline-repl render-height="300" editor-height="300">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="0.5" data-position="0 0.1 0.35"></mr-light>
            <mr-panel>
                <mr-text>Amet sed pulvinar amet a mi est adipiscing rhoncus enim. Dui in nulla labore quis nibh consectetur tempor vulputate diam. Sed hendrerit risus gravida labore.</mr-text>
                <mr-model id="bowtie" src="/static/sample/bowtie.glb"></mr-model>
                <mr-text>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore disputandum putant. Sed ut iis bonis erigimur, quae expectamus, sic laetamur iis, quae et splendide dicta sint neque sint conversa.</mr-text>
            </mr-panel>
        </mr-app>
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 20px;
        }
        mr-text {
            max-width: 600px;
        }
        #bowtie {
            width: 100px;
            height: 100px;
            z-index: 70;
            scale: 0.1;
        }
    </code>
</inline-repl>
