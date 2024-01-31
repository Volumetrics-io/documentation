# &lt;mr-a&gt;

The `<mr-a>`embeds a hyperlink in the UI of an `<mr-panel>`.

## Example

<inline-repl>
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="3" data-position="0 0.25 0.25"></mr-light>
            <mr-panel>
                <mr-a href="https://mrjs.io/">This is a link</mr-a>
                <mr-a class="big-link" href="https://volumetrics.io/">This is a big purple link</mr-a>
                <mr-text>This is not a link</mr-text>
            </mr-panel>
        </mr-app> 
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            padding: 10vw;
            gap: 10px;
            width: 100vw;
            height: 100vh;
            border-radius: unset;
        }
        .big-link {
            font-size: 150%;
            color: rebeccaPurple;
        }
    </code>
</inline-repl>

## Definition and Usage

`The <mr-a>` tag has one required attribute:

* `href`: the hyperlink destination

## Image links

Like it's HTML equivalent, `<mr-a>` can be used to wrap other elements, making them clickable links

<inline-repl render-height="400" editor-height="240">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="3" data-position="0 0.25 0.25"></mr-light>
            <mr-panel>
                <mr-text>An clickable image</mr-text>
                <mr-a href="https://en.wikipedia.org/wiki/Humpback_whale">
                    <mr-img
                        src="/static/sample/humpback.jpg"
                        alt="A Humpback whale breaking the water">
                    </mr-img>
                </mr-a>
            </mr-panel>
        </mr-app>
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            padding: 10vw;
            gap: 10px;
            width: 100vw;
            height: 100vh;
            border-radius: unset;
        }
        mr-img {
            max-width: 320px;
            border-radius: 50px;
        }
        mr-img.hover {
            border-radius: 30px;
        }
    </code>
</inline-repl>
