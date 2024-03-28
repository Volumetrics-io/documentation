---
title: Notify
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Notify.js
---
# Notify

## Objects

<dl>
<dt><a href="#error">error</a> : <code>object</code></dt>
<dd><p>Useful namespace for helping with error utility functions</p>
</dd>
<dt><a href="#warn">warn</a> : <code>object</code></dt>
<dd><p>Useful namespace for helping with error utility functions</p>
</dd>
</dl>

<a name="error"></a>

## error : <code>object</code>
Useful namespace for helping with error utility functions

**Kind**: global namespace  

* [error](#error) : <code>object</code>
    * [.emptyParentFunction()](#error.emptyParentFunction)
    * [.err()](#error.err)

<a name="error.emptyParentFunction"></a>

### error.emptyParentFunction()
Function helper to error in console if a child class is expected to overwrite a parent
class's function but didnt.

**Kind**: static method of [<code>error</code>](#error)  
<a name="error.err"></a>

### error.err()
Function helper separated out to console error for when we eventually have a more robust
erroring system.

**Kind**: static method of [<code>error</code>](#error)  
<a name="warn"></a>

## warn : <code>object</code>
Useful namespace for helping with error utility functions

**Kind**: global namespace  

* [warn](#warn) : <code>object</code>
    * [.EmptyParentFunction()](#warn.EmptyParentFunction)
    * [.warn()](#warn.warn)

<a name="warn.EmptyParentFunction"></a>

### warn.EmptyParentFunction()
Function helper to warn in console if a child class might want to overwrite a parent
class's function but didnt. Useful for base classes that are more abstract classes (if in Java or C++)
to remind the user of the child class that there is more to implement.

**Kind**: static method of [<code>warn</code>](#warn)  
<a name="warn.warn"></a>

### warn.warn()
Function helper separated out to console warn for when we eventually have a more robust
warning system.

**Kind**: static method of [<code>warn</code>](#warn)  
