# MarkPress

An easy to use **Markdown File CMS**.

# Quick Documentation:

See it in action on [Modularr.com](http://modularr.com)

## Quick How to:

### Install:
- Copy the Files into **public_html**


### Gotcha's:
- All themes are stored in **themes**
- There is no Admin Panel
    - manage your content using MarkDown Files
- All the content is stored in **posts** by default
    - Use subfolders for blog type posts (/blog/post)
    - Use the main folder for pages
    - Folder Structure:
        - /file
            - posts/file.md
        - /blog
            - posts/blog/
        - /blog/one
            - posts/blog/one.md

## Basic Usage:

A page or Post uses [Yaml FrontMatter](https://github.com/Modularr/YAML-FrontMatter). The date will be used to sort posts in archive pages.

### Yaml Frontmatter Post/Page:

    ---
    title: Hello World!
    route: hello-world
    date: 2015-09-15 09:10:00
    ---
    # Hello World!
    
    ## Lorem Ipsum
    
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

## The Power of Templates:
We make use of the amazing Twig template engine. Which makes it easy for designers to build cool designs as easy as possible with MarkPress.

### themes/{theme_name}/show_news.tpl:

    {% extends "themes/default/base.tpl" %}
    {% block title %}Archive{% endblock %}
    {% block content %}
    <table>
        <tr>
            <td><strong>Post</strong></td>
            <td><strong>Date</strong></td>
        </tr>
        {% for post in posts %}
            <tr>
                <td><a href="{{ post.route }}">{{ post.title }}</a></td>
                <td>{{ post.date|date(null, "Europe/Brussels") }}</td>
            </tr>
        {% endfor %}
    </table>
    {% endblock %}

### themes/{theme_name}/show_post.tpl:

    {% extends "themes/default/base.tpl" %}
    {% block title %}{{ title }}{% endblock %}
    {% block content %}
    <h1>{{ title }}</h1>
    {{ content }}
    {% endblock %}
    
### themes/{theme_name}/base.tpl
    <!DOCTYPE html>
    <html>
    <head>
    {% block head %}
        <title>{% block title %}{% endblock %} | My Webpage</title>
            <link rel="stylesheet" href="style.css" />
    {% endblock %}
    </head>
    <body>
        <div id="content">{% block content %}{% endblock %}</div>
        <div id="footer">
            {% block footer %}<!-- -->
                &copy; Copyright 2016 by <a href="http://moduarr.com">Modularr</a>.<!-- --
                    &copy; Powered by <a href="http://moduarr.com">Modularr CMS 1.0</a>.<!-- -->
            {% endblock %}
        </div>
    </body>
    </html>

## What is this Library?

This library is an aim at revamping the ancient CuteNews. It takes an old concept with newer techniques and code.

### The how

Our Blogging library allows you to integrate a custom blog into your website in no time. Much to how CuteNews used to work back in the day.

## Some History

CuteNews is a CMS that allows you to integrate their blog as a module inside your very own website. Unlike most CMS that exist today.

Most CMS have their own framework and require you to theme their site and install it next to your website. And just like CuteNews they have a admin panel.

## Fast forward

Our Library, works similarly to CuteNews, however it does not require it's own Subdomain or Admin Panel. It uses a more modern template engine and package manager and makes use of Markdown and Yaml Frontmatter.

Instead of being stuck in a framework, or managing yet another CMS. You can instead directly integrate a simple blogging platform into your PHP project in notime. No Admin Panel or Database needed.

MarkPress gets out of your way, and just lets you create one or more blogs and pages that you can integrate into your website rather then maintaining yet another CMS. And with newer well tested and robust up to date libraries and code.

Dependencies:

- [ParseDown (Markdown Parser)](https://github.com/erusev/parsedown)
- [Mustashe (Template Engine)](https://github.com/mustache/mustache)
