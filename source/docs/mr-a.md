# &lt;mr-a&gt;

The `<mr-a>`embeds a hyperlink in the UI of an `<mr-panel>`.

## Example

<!-- ```html
<mr-app>
    <mr-panel id="panel">
        <mr-a href="https://volumetrics.io">volumetrics</mr-a>
    </mr-panel>
</mr-app>
``` -->

<inline-repl>
    <code slot="html">
        <mr-app>
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

<!-- <iframe height="300" style="width: 100%;" scrolling="no" title="mr-a" src="https://codepen.io/lobau/embed/zYbPWPz?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe> -->

## Definition and Usage

`The <mr-a>` tag has one required attribute:

* `href`: the hyperlink destination

## Image links

Like it's HTML equivalent, `<mr-a>` can be used to wrap other elements, making them clickable links

<!-- ```html
<mr-a href="https://volumetrics.io">
    <mr-img src="…"></mr-img>
</mr-a>
``` -->

<inline-repl render-height="400" editor-height="240">
    <code slot="html">
        <mr-app>
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

<!-- <iframe height="400" style="width: 100%;" scrolling="no" title="mr-a + mr-img" src="https://codepen.io/lobau/embed/GReOxyz?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe> -->

<!-- ![mr-a-example-1](/static/mr-a-example-1.png) -->
