# &lt;mr-img&gt;

The `<mr-img>` tag is used to embed an image in an MRjs page.

## Example

<inline-repl render-height="360" editor-height="240">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="1" data-position="0 0 0.35"></mr-light>
            <mr-panel>
                <mr-img src="/static/sample/humpback.jpg" alt="A Humpback whale breaching the water"></mr-img>
                <mr-text>A Humpback whale breaching the water</mr-text>
            </mr-panel>
        </mr-app>
    </code>
    <code slot="css">
        mr-panel {
            display: flex;
            <!-- flex-flow: column nowrap; -->
            align-items: center;
            justify-content: center;
            padding: 10vw;
            gap: 10px;
            width: 100vw;
            height: 100vh;
            border-radius: unset;
        }
        mr-img {
            max-width: 300px;
            border-radius: 30px;
        }
    </code>
</inline-repl>


## Definition and Usage

Images are not technically inserted into a web page; images are linked to web pages. The `<mr-img>` tag creates a holding space for the referenced image.

The `<mr-img>` tag has two required attributes:

* `src` - Specifies the path to the image
* `alt` - Specifies an alternate text for the image, if the image, for some reason, cannot be displayed, or if the user uses a screen reader.
