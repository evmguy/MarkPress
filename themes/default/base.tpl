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
