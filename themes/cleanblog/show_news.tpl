{% include 'themes/cleanblog/archive_header.tpl' %}
    {% for post in posts %}
    <div class="post-preview">
        <a href="{{ post.route }}"><h2 class="post-title">{{ post.title }}</h2>
        <h3 class="post-subtitle">
            {% if post.subtitle != false %}
                {{ post.subtitle }}
            {% else %}
                {{ post.content|length > 79 ? post.content|slice(0, 79) ~ '...' : post.content  }}
            {% endif %}
        </h3></a>
        <p class="post-meta">Posted
            {% if post.author != false %}
            by {{ post.author }}
            {% endif %}
            on {{ post.date|date('F d, Y', "Europe/Brussels") }}
        </p>
    </div>
    <hr>
    {% endfor %}
{% include 'themes/cleanblog/footer.tpl' %}
