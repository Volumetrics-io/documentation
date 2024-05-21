---
description: "A creation sandbox area, playaround and try out mrjs!"
---

# Creation Sandbox

This is a creation sandbox - try out mrjs directly in your browser!

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
