# &lt;mr-light&gt;

`<mr-light>` creates a light source in the mr.js scene.

## Example

```html
<mr-app>
    <mr-light color="red" intensity="10" data-position="0 1 1"></mr-light>
    <mr-panel>
        <mr-text> this white panel is tinted red by the light.</mr-text>
    </mr-panel>
</mr-app>
```

## Example from homepage

```html
<mr-app>
    <mr-panel>...</mr-panel>
    <mr-entity data-comp-animation="type: rotate; maxspeed: 0.002; acceleration: 0.000008;" 
             data-position="0 0 2">
        <mr-light layer="2" color="hsl(30, 100%, 50%)" intensity="1" data-position="0 1 0"></mr-light>
        <mr-light layer="2" color="hsl(208, 100%, 50%)" intensity="2" data-position="1 -1 0"></mr-light>
        <mr-light layer="2" color="hsl(340, 100%, 50%)" intensity="3" data-position="-1 -1 0"></mr-light>
    </mr-entity>
</mr-app>
```

### Homepage without Lights added to it

![mr-light-example-0](/static/mr-light-example-0.png)

### Homepage with Lights added to it

![mr-light-example-1](/static/mr-light-example-1.png)

## Definition and Usage

`<mr-light>` can be used to create additional light sources that can be positioned throughout the environment.

`<mr-light>` has two optional values:

* `color`: the color of the light
* `intensity`: the brightness of the light

## Shadows

for performance reasons, `<mr-light>` cannot cast shadows. Please use the global lighting for shadows.
