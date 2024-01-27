# &lt;mr-button&gt;

The `<mr-button>` embeds a button in the UI of an `<mr-panel>`.

## Example

```html
<mr-app>
    <mr-panel id="panel">
        <mr-button onclick="changeColor()">Change color!</mr-button>
    </mr-panel>
</mr-app>
…
<script>
const changeColor = () => {
    let hue = Math.floor(Math.random() * 360);
    let color = `hsl(${hue}, 100%, 60%)`;
    document.querySelector("#panel").style.backgroundColor = color;
};

</script>
```

<iframe height="300" style="width: 100%;" scrolling="no" title="mr-button" src="https://codepen.io/lobau/embed/mdoqLOd?default-tab=result" frameborder="no" loading="lazy" allowtransparency="true" allowfullscreen="true"></iframe>


## Definition and Usage

`<mr-button>` has one optional attribute:

* `onclick`: the function to be called when the button is clicked
