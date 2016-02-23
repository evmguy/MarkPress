{% include 'themes/cleanblog/post_header.tpl' %}
    <!-- Post Content -->
    <article>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    {{ content }}
                    <!-- include disqus -->
                    {% include 'themes/cleanblog/disqus.tpl' %}
                    <!-- include disqus -->
                </div>
            </div>
        </div>
    </article>
{% include 'themes/cleanblog/post_footer.tpl' %}
