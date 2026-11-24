---
---
# Karuna

<b style='color:var(--blue)'>Blue</b> <b style='color:var(--red)'>Red</b> <b style='color:var(--grey)'>Grey</b>

<button popovertarget="popover">BUTTON</button>
<div popover id='popover'>Prova</div>
<fieldset><legend>Form</legend>
<form>
<div>
  <div>
    <label for="name">Name</label>
    <input type="text" name='name' id='name'>
  </div>
  <div>
    <input type="submit">
    <input type="reset">
  </div>
</div>
</form>
</fieldset>

{% for i in (1..9) %}<span style='font-weight:{{ i }}00;'>Weight</span> _{{ i }}00_ __Bold__<br>{% endfor %}

<details markdown=1><summary>Lists</summary>

### Unordered

* Item 1
* Item 2
* Item 2a
* Item 2b
  * Item 3a
  * Item 3b

### Ordered

1. Item 1
1. Item 2
1. Item 3
  1. Item 3a
  1. Item 3b

</details>

## Images

![This is an alt text.](/assets/images/favicon/favicon-16x16.png "This is a sample image.")

## Links

You may be using [Markdown Live Preview](https://markdownlivepreview.com/).

## Blockquotes

> Markdown is a lightweight markup language with plain-text-formatting syntax, created in 2004 by John Gruber with Aaron Swartz.
>
>> Markdown is often used to format readme files, for writing messages in online discussion forums, and to create rich text using a plain text editor.

## Tables

| Left columns  | Right columns |
| ------------- |:-------------:|
| left foo      | right foo     |
| left bar      | right bar     |
| left baz      | right baz     |

## Blocks of code

```js
let message = 'Hello world';
alert(message);
```

## Inline code

This web site is using `markedjs/marked`.