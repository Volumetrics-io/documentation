---
title: MRHyperlinkEntity
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/core/entities/MRHyperlinkEntity.js
---
# MRHyperlinkEntity

## Classes

<dl>
<dt><a href="#MRHyperlinkEntity">MRHyperlinkEntity</a> ⇐ <code>MRTextEntity</code></dt>
<dd><p>3D representation of a hyperlink. <code>mr-a</code></p>
</dd>
</dl>

## Functions

<dl>
<dt><a href="#_createLink">_createLink()</a></dt>
<dd><p>Creates the link object if it&#39;s not already created and handles the href and
target attributes.</p>
</dd>
<dt><a href="#href">href()</a> ⇒ <code>string</code></dt>
<dd><p>Grabs the href of the link object</p>
</dd>
<dt><a href="#href">href(src_str)</a></dt>
<dd><p>Sets the href of the link object</p>
</dd>
<dt><a href="#connected">connected()</a></dt>
<dd><p>(async) makes sure the link object is created and sets up event
listeners for touchstart and click.</p>
</dd>
</dl>

<a name="MRHyperlinkEntity"></a>

## MRHyperlinkEntity ⇐ <code>MRTextEntity</code>
3D representation of a hyperlink. `mr-a`

**Kind**: global class  
**Extends**: <code>MRTextEntity</code>  
<a name="_createLink"></a>

## \_createLink()
Creates the link object if it's not already created and handles the href and
target attributes.

**Kind**: global function  
<a name="href"></a>

## href() ⇒ <code>string</code>
Grabs the href of the link object

**Kind**: global function  
**Returns**: <code>string</code> - the href value  
<a name="href"></a>

## href(src_str)
Sets the href of the link object

**Kind**: global function  

| Param | Type | Description |
| --- | --- | --- |
| src_str | <code>string</code> | the new href value |

<a name="connected"></a>

## connected()
(async) makes sure the link object is created and sets up event
listeners for touchstart and click.

**Kind**: global function  
