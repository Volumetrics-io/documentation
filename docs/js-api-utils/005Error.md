---
title: Error
github-path: https://github.com/volumetrics-io/mrjs/edit/main/src/utils/Error.js
---
# Error

<a name="error"></a>

## error : <code>object</code>
Useful namespace for helping with error utility functions

**Kind**: global namespace  

* [error](#error) : <code>object</code>
    * [.emptyParentFunction()](#error.emptyParentFunction)
    * [.warnOfEmptyParentFunction()](#error.warnOfEmptyParentFunction)

<a name="error.emptyParentFunction"></a>

### error.emptyParentFunction()
Function helper to error in console if a child class is expected to overwrite a parent
class's function but didnt.

**Kind**: static method of [<code>error</code>](#error)  
<a name="error.warnOfEmptyParentFunction"></a>

### error.warnOfEmptyParentFunction()
Function helper to warn in console if a child class might want to overwrite a parent
class's function but didnt. Useful for base classes that are more abstract classes (if in Java or C++)
to remind the user of the child class that there is more to implement.

**Kind**: static method of [<code>error</code>](#error)  
