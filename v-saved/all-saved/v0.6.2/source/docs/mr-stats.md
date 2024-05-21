# &lt;mr-stats&gt;

The `<mr-stats>` is a text-based entity that can be added to a panel to show an updating counter of the current fps.

It is performant both in headset and on desktop.

Note this is not the same thing that is created when doing `stats=true` in `<mr-app>`. See [`stats=true`](https://docs.mrjs.io/doc/mr-app/#stats) for that instead.

## Example

<inline-repl>
    <code slot="html">
        <mr-app>
            <mr-panel>
                <mr-stats></mr-stats>
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
    <code slot="javascript">
    </code>
</inline-repl>
