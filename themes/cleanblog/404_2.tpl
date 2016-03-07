{% set base = 'http://0effortthemes.com/400-error-page/demo/' %}
{% set code = '404' %}
{% set status = 'Not Found' %}
{% set message = "This page or post was not found. Go to the <a href='"~settings.base~"'>homepage</a>." %}
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>{{ code }} {{ message }}</title>
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="{{ base }}styles/vendor.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700' rel='stylesheet' type='text/css'>
            <link rel="stylesheet" href="{{ base }}styles/main.css">
            <script src="{{ base }}scripts/vendor/modernizr.js"></script>
        </head>
        <body>
            <!--[if lt IE 10]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->
            <div class="page_overlay">
                <div class="loader-inner ball-pulse">
                    <div></div>
                    <div></div>
                    <div></div>
                </div>
            </div>
            <div class="wrap400 animated fadeIn">
                <div class="row-flex">
                 <div class="messge400">
            <h1><span>{{ code }}</span> <br>
            {{ status }}</h1>
            <p>{{ message }}</p>
          </div>
                    <div class="charecter-3"><img src="{{ base }}images/charecter-3.png" alt="">
                        <div class="eye3"><img src="{{ base }}images/charecter-3-eye.gif" alt=""></div>
                    </div>
                </div>
            </div>

            <script src="{{ base }}scripts/vendor.js"></script>
            <script src="{{ base }}scripts/plugins.js"></script>
            <script src="{{ base }}scripts/main.js"></script>
        </body>
    </html>
