# &lt;mr-a&gt;

The `<mr-a>`embeds a hyperlink in the UI of an `<mr-panel>`.

## Example

<inline-repl editor-height="240">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="1" data-position="0 0 0.35"></mr-light>
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

The `<mr-a>` tag has two required attribute:

* `href`: the hyperlink destination

## Image links

Like it's HTML equivalent, `<mr-a>` can be used to wrap other elements, making them clickable links

<inline-repl render-height="360" editor-height="270">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="1" data-position="0 0 0.35"></mr-light>
            <mr-panel>
                <mr-a href="https://en.wikipedia.org/wiki/Humpback_whale">
                    <mr-img
                        src="/static/sample/humpback.jpg"
                        alt="A Humpback whale breaching the water">
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
            width: 100vw;
            height: 100vh;
        }
        mr-img {
          max-width: 300px;
          border-radius: 30px;
        }
        mr-img.hover {
            border-radius: 20px;
        }
    </code>
</inline-repl>
