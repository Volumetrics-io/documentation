# &lt;mr-button&gt;

The `<mr-button>`embeds a button in the UI of an `<mr-panel>`.

## Example

```html
<mr-app>
    <mr-panel id="panel">
        <mr-button onclick="changeColor()">Click Me!</mr-button>
    </mr-panel>
</mr-app>
…
<script>
    let panel = document.getElementById('panel')
    function changColor() {
        let color = `#${Math.floor(Math.random() * 0xFFFFFF).toString(16).padStart(6, '0')}`;
        panel.style.backgroundColor = color 
    }
</script>
```

\[example img\]

## Definition and Usage

`<mr-button>` has one optional attribute:

* `onclick`: the function to be called when the button is clicked
