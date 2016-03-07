    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    {% include 'themes/cleanblog/foot.tpl' %}
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="{{ js }}/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="{{ js }}/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="{{ js }}/clean-blog.js"></script>

    <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script><!-- -->

    {% if settings.google_analytics %}
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      ga('create', '{{ settings.google_analytics }}', 'auto');
      ga('send', 'pageview');
    </script>
    {% endif %}
</body>
</html>
