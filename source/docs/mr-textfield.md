# &lt;mr-textfield&gt;

The `<mr-textfield>` creates a text input field in the UI of an `<mr-panel>`.

## Example

<inline-repl>
    <code slot="html">
        <mr-app>
            <mr-panel id="panel">
                <mr-textfield id="input">#ff00ff</mr-textfield>
                <mr-button onclick="setColor()">set panel color</mr-button>
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
        let input = document.getElementById('input');
        let panel = document.getElementById('panel');
        const regex = /^#(?:[0-9a-fA-F]{3}){1,2}$/;

        function setColor() {
            let inputText = input.value;

            if (regex.test(inputText)) {
                panel.style.backgroundColor = inputText;
            } else {
                input.value = "that's not a color!";
            }
        }
        setColor();
    </code>
</inline-repl>

## Definition and Usage

`<mr-textfield>`Is the simplest way to capture keyboard input, enabling more practical interactions such as form submission or search input, without needing to exit a spatial experience.
