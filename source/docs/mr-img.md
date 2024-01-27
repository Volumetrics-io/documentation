# &lt;mr-img&gt;

The `<mr-img>` tag is used to embed an image in an `mrjs` page.

## Example

```html
<mr-app>
    <mr-panel class="columns">

        <mr-div>
            …
        </mr-div>

        <mr-div>
            <mr-img class="hero-image" src="./assets/humpback.jpg" alt="A Humpback whale coming out of the water"></mr-img>
        </mr-div>

    </mr-panel>
</mr-app>
```

![screenshot of an mrjs scene with text on the left and a humpback whale image on the right](/static/mr-img-example-0.png)

## Definition and Usage

Images are not technically inserted into a web page; images are linked to web pages. The `<mr-img>` tag creates a holding space for the referenced image.

The `<mr-img>` tag has two required attributes:

* `src` - Specifies the path to the image
* `alt` - Specifies an alternate text for the image, if the image, for some reason, cannot be displayed, or if the user uses a screen reader.
