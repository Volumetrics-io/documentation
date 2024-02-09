# &lt;mr-button&gt;

The `<mr-button>` embeds a button in the UI of an `<mr-panel>`.

## Example

<inline-repl>
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="0.5" data-position="0 0 0.25"></mr-light>
            <mr-panel id="panel">
                <mr-button onclick="changeColor()">Change color!</mr-button>
            </mr-panel>
        </mr-app>
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            width: 100vw;
            height: 100vh;
        }
        mr-button {
            font-family: system-ui;
            background-color: white;
            padding: 8px 16px;
            font-size: 150%;
            border-radius: 20px;
        }
    </code>
    <code slot="javascript">
        function changeColor() {
            let hue = Math.floor(Math.random() * 360);
            let color = 'hsl(' +  hue + ', 100%, 80%)';
            document.querySelector("#panel").style.backgroundColor = color;
        }
        changeColor();
    </code>
</inline-repl>


## Definition and Usage

`<mr-button>` has one optional attribute:

* `onclick`: the function to be called when the button is clicked
