# &lt;mr-video&gt;

The `<mr-video>` tag is used to embed a video in an MRjs page.

## Definition and Usage

Videos are not technically inserted into a web page; images are linked to web pages. The `<mr-video>` tag creates a holding space for the referenced video.

The `<mr-video>` tag has two required attributes:

* `src` - Specifies the path to the video
* `alt` - Specifies an alternate text for the video, if the video, for some reason, cannot be displayed, or if the user uses a screen reader.

## Example

<inline-repl render-height="360" editor-height="240">
    <code slot="html">
        <mr-app>
            <mr-panel>
                <mr-video src="/static/sample/video.mp4" alt="A youtube video used as one of the intro videos for MRjs. The main tag line is as follows 'Spatial Development can be intimidating, but it doesn't have to be. mrjs enables you to break out from 2D to 3D, using the tools you already know how to use: HTML, CSS, and a little JavaScript.'"></mr-video>
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
