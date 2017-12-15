# Notes

- What is Rails?
- Who is DHH?
- What are Ruby meetups?
- What are the components of a Rails Application?
- What are gems?
- What is rubygems.org
- What is rubyonrails.org


HTML
The language for building web pages

CSS
The language for styling web pages

JavaScript
The language for programming web pages

SQL
A language for accessing databases

PHP
A web server programming language

jQuery
A JavaScript library for developing web pages

W3.CSS
A modern CSS framework for faster and better responsive web sites

Bootstrap
Bootstrap is a CSS framework for designing better web pages


HTML is the standard markup language for creating Web pages.

- HTML stands for Hyper Text Markup Language
- HTML describes the structure of Web pages using markup
- HTML elements are the building blocks of HTML pages
- HTML elements are represented by tags
- HTML tags label pieces of content such as "heading", "paragraph", "table", and so on
- Browsers do not display the HTML tags, but use them to render the content of the page

- The <!DOCTYPE html> declaration defines this document to be HTML5
- The \<html> element is the root element of an HTML page
- The \<head> element contains meta information about the document
- The \<title> element specifies a title for the document
- The \<body> element contains the visible page content
- The \<h1> element defines a large heading
- The \<p> element defines a paragraph
  
# HTML Attributes

- All HTML elements can have attributes
- Attributes provide additional information about an element
- Attributes are always specified in the start tag
- Attributes usually come in name/value pairs like: name="value"

## The href Attribute

HTML links are defined with the \<a> tag. The link address is specified in the href attribute:

`<a href="https://www.w3schools.com">This is a link</a>`

## The src Attribute

HTML images are defined with the \<img> tag.

The filename of the image source is specified in the src attribute:

## The width and height Attributes

Images in HTML has a set of size attributes, which specifies the width and height of the image:

`<img src="img_girl.jpg" width="500" height="600">`

## The alt Attribute

The alt attribute specifies an alternative text to be used, when an image cannot be displayed.

The value of the attribute can be read by screen readers. This way, someone "listening" to the webpage, e.g. a blind person, can "hear" the element.

`<img src="img_girl.jpg" alt="Girl with a jacket">`

## The style Attribute

The style attribute is used to specify the styling of an element, like color, font, size etc.

`<p style="color:red">I am a paragraph</p>`

## The lang Attribute

The language of the document can be declared in the \<html> tag.

The language is declared with the lang attribute.

Declaring a language is important for accessibility applications (screen readers) and search engines:

```
<!DOCTYPE html>
<html lang="en-US">
<body>

...

</body>
</html>```

## The title Attribute

Here, a title attribute is added to the \<p> element. The value of the title attribute will be displayed as a tooltip when you mouse over the paragraph:
  
```<p title="I'm a tooltip">
This is a paragraph.
</p>```

## We Suggest: Quote Attribute Values

The HTML5 standard does not require quotes around attribute values.

The href attribute, demonstrated above, can be written as:

`<a href=https://www.w3schools.com>`

# Headings Are Important

Search engines use the headings to index the structure and content of your web pages.

Users skim your pages by its headings. It is important to use headings to show the document structure.

\<h1> headings should be used for main headings, followed by \<h2> headings, then the less important \<h3>, and so on.

# Paragraphs

# Styles

## Chapter Summary

Use the style attribute for styling HTML elements
Use background-color for background color
Use color for text colors
Use font-family for text fonts
Use font-size for text sizes
Use text-align for text alignment#

# HTML Formatting Elements

In the previous chapter, you learned about the HTML style attribute.

HTML also defines special elements for defining text with a special meaning.

HTML uses elements like \<b> and \<i> for formatting output, like bold or italic text.

Formatting elements were designed to display special types of text:

```
<b> - Bold text
<strong> - Important text
<i> - Italic text
<em> - Emphasized text
<mark> - Marked text
<small> - Small text
<del> - Deleted text
<ins> - Inserted text
<sub> - Subscript text
<sup> - Superscript text
```

# HTML Quotations

## HTML \<q> for Short Quotations
  
The HTML \<q> element defines a short quotation.

Browsers usually insert quotation marks around the \<q> element.
  
## HTML \<blockquote> for Quotations

The HTML \<blockquote> element defines a section that is quoted from another source.

Browsers usually indent \<blockquote> elements.
  
```<p>Here is a quote from WWF's website:</p>
<blockquote cite="http://www.worldwildlife.org/who/index.html">
For 50 years, WWF has been protecting the future of nature.
The world's leading conservation organization,
WWF works in 100 countries and is supported by
1.2 million members in the United States and
close to 5 million globally.
</blockquote>```

## HTML \<abbr> for Abbreviations

The HTML \<abbr> element defines an abbreviation or an acronym.

Marking abbreviations can give useful information to browsers, translation systems and search-engines.

`<p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>`

# Comments

<!-- This is a comment -->

# CSS

CSS stands for Cascading Style Sheets.

CSS describes how HTML elements are to be displayed on screen, paper, or in other media.

CSS saves a lot of work. It can control the layout of multiple web pages all at once.

CSS can be added to HTML elements in 3 ways:

- Inline - by using the style attribute in HTML elements
- Internal - by using a \<style> element in the \<head> section
- External - by using an external CSS file

The most common way to add CSS, is to keep the styles in separate CSS files. However, here we will use inline and internal styling, because this is easier to demonstrate, and easier for you to try it yourself.

# Tables

An HTML table is defined with the \<table> tag.

Each table row is defined with the \<tr> tag. A table header is defined with the \<th> tag. By default, table headings are bold and centered. A table data/cell is defined with the \<td> tag.


<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th> 
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td> 
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td> 
    <td>94</td>
  </tr>
</table>


# Unordered HTML List

An unordered list starts with the <ul> tag. Each list item starts with the <li> tag.

The list items will be marked with bullets (small black circles) by default:

<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

<ul style="list-style-type:square">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

<ul style="list-style-type:none">
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

# Block-level Elements

A block-level element always starts on a new line and takes up the full width available (stretches out to the left and right as far as it can).

Examples of block-level elements:
```
<div>
<h1> - <h6>
<p>
<form>```

# HTML Classes

```
<!DOCTYPE html>
<html>
<head>
<style>
div.cities {
    background-color: black;
    color: white;
    margin: 20px 0 20px 0;
    padding: 20px;
} 
</style>
</head>
<body>

<div class="cities">
<h2>London</h2>
<p>London is the capital of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
</div>

<div class="cities">
<h2>Paris</h2>
<p>Paris is the capital and most populous city of France.</p>
</div>

<div class="cities">
<h2>Tokyo</h2>
<p>Tokyo is the capital of Japan, the center of the Greater Tokyo Area,
and the most populous metropolitan area in the world.</p>
</div>

</body>
</html>
```
# Javascript

JavaScript makes HTML pages more dynamic and interactive.

## The HTML \<script> Tag
  
The \<script> tag is used to define a client-side script (JavaScript).

The \<script> element either contains scripting statements, or it points to an external script file through the src attribute.

Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.

To select an HTML element, JavaScript very often use the document.getElementById(id) method.

This JavaScript example writes "Hello JavaScript!" into an HTML element with id="demo":

```
<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>```

# HTML File Paths

Path	Description
```
<img src="picture.jpg">	picture.jpg is located in the same folder as the current page
<img src="images/picture.jpg">	picture.jpg is located in the images folder in the current folder
<img src="/images/picture.jpg">	picture.jpg is located in the images folder at the root of the current web
<img src="../picture.jpg">	picture.jpg is located in the folder one level up from the current folder```


# HTML Layout Elements

- \<header> - Defines a header for a document or a section
- \<nav> - Defines a container for navigation links
- \<section> - Defines a section in a document
- \<article> - Defines an independent self-contained article
- \<aside> - Defines content aside from the content (like a sidebar)
- \<footer> - Defines a footer for a document or a section
- \<details> - Defines additional details
- \<summary> - Defines a heading for the \<details> element

# HTML Layout Techniques ***

There are four different ways to create multicolumn layouts. Each way has its pros and cons:

HTML tables
CSS float property
CSS framework
CSS flexbox

# Which One to Choose?

## HTML Tables

The <table> element was not designed to be a layout tool! The purpose of the <table> element is to display tabular data. So, do not use tables for your page layout! They will bring a mess into your code. And imagine how hard it will be to redesign your site after a couple of months.

Tip: Do NOT use tables for your page layout!

## CSS Frameworks

If you want to create your layout fast, you can use a framework, like W3.CSS or Bootstrap.

## CSS Floats

It is common to do entire web layouts using the CSS float property. Float is easy to learn - you just need to remember how the float and clear properties work. Disadvantages: Floating elements are tied to the document flow, which may harm the flexibility. Learn more about float in our CSS Float and Clear chapter.

# CSS Layout - float and clear

The float property specifies whether or not an element should float.

The clear property is used to control the behavior of floating elements.

# The float Property

In its simplest use, the float property can be used to wrap text around images.

The following example specifies that an image should float to the right in a text:

```img {
    float: right;
    margin: 0 0 10px 10px;
}```

# The clear Property

The clear property is used to control the behavior of floating elements.

Elements after a floating element will flow around it. To avoid this, use the clear property.

The clear property specifies on which sides of an element floating elements are not allowed to float:

```div {
    clear: left;
}```

The overflow:auto clearfix works well as long as you are able to keep control of your margins and padding (else you might see scrollbars). The new, modern clearfix hack however, is safer to use, and the following code is used for most webpages:

```
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}```

# Margins

If the margin property has four values:

margin: 25px 50px 75px 100px;
top margin is 25px
right margin is 50px
bottom margin is 75px
left margin is 100px
If the margin property has three values:

margin: 25px 50px 75px;
top margin is 25px
right and left margins are 50px
bottom margin is 75px
If the margin property has two values:

margin: 25px 50px;
top and bottom margins are 25px
right and left margins are 50px
If the margin property has one value:

margin: 25px;
all four margins are 25px

