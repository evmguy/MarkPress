{% include "themes/"~settings.theme~"/post_header.tpl" %}
    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    {{ content }}

                    {% if not disable_comments %}
                        <!-- include disqus -->
                        {% include "themes/"~settings.theme~"/disqus.tpl" %}
                        <!-- include disqus -->
                    {% endif %}
                </div>
            </div>
        </div>
    </article>
{% include "themes/"~settings.theme~"/post_footer.tpl" %}
