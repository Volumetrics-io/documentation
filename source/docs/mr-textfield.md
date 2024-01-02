---
title: "&lt;mr-textfield&gt;"
description: "The <mr-textfield> tag creates a text input field in the interface of an <mr-panel>."
---
# &lt;mr-textfield&gt;

The `<mr-textfield>` creates a text input field in the UI of an `<mr-panel>`.

## Example

```html
<mr-app>
  <mr-panel id="panel">
    <mr-textfield id="input">#ff00ff</mr-textfield>
    <mr-button onclick="setColor()">set panel color</mr-button>
  </mr-panel>
</mr-app>
...
<script>
  let input = document.getElementById('input')
  const regex = /^#(?:[0-9a-fA-F]{3}){1,2}$/;
  
  function setColor() {
    let inputText = input.value
    
    if (regex.test(inputText)) {
      panel.style.backgroundColor = color 
    } else {
      input.value = "that's not a color!"
    }
  }
</script>
```

\[example img\]

## Definition and Usage

`<mr-textfield>`Is the simplest way to capture keyboard input, enabling more practical interactions such as form submission or search input, without needing to exit a spatial experience.