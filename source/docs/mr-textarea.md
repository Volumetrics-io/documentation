# &lt;mr-textarea&gt;

The `<mr-textarea>` creates a large text input field in the UI of an `<mr-panel>`. Unlike `<mr-textfield>` It allows for line breaks.

## Example

<inline-repl editor-height="280">
    <code slot="html">
        <mr-app>
            <mr-panel id="panel">
                <mr-textarea id="input">
                    This is a text area.
                    <br/>
                    It allows for much larger text input for things like message, documents, or code!
                </mr-textarea>
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
    </code>
</inline-repl>
