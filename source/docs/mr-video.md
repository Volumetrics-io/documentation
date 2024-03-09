# &lt;mr-video&gt;

The `<mr-video>` tag is used to embed a video in an MRjs page.

## Example

<inline-repl render-height="360" editor-height="240">
    <code slot="html">
        <mr-app>
            <mr-light color="white" intensity="1" data-position="0 0 0.35"></mr-light>
            <mr-panel>
                <mr-video src="..." alt="..."></mr-img>
                <mr-text>...</mr-text>
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
            object-fit: cover;
        }
    </code>
</inline-repl>

## Definition and Usage

Videos are not technically inserted into a web page; images are linked to web pages. The `<mr-video>` tag creates a holding space for the referenced video.

The `<mr-video>` tag has two required attributes:

* `src` - Specifies the path to the video
* `alt` - Specifies an alternate text for the video, if the video, for some reason, cannot be displayed, or if the user uses a screen reader.

???

TODO - finish this
