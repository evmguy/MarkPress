{% set base = 'https://ukieweb.com/envato/404-error/monkey/' %}
{% set code = '404' %}
{% set status = 'page not found' %}
{% set message = "The page you are looking for was moved, removed, renamed or might never existed." %}
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en"> <!--<![endif]-->

<head>
    <meta charset="utf-8" />
    <title>{{ code }} {{ status }}</title>
    <meta name="author" content="ukieweb" />
    <meta name="keywords" content="404 page, monkey, css3, template, html5 template" />
    <meta name="description" content="404 - Page Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!-- Libs CSS -->
    <link type="text/css" media="all" href="{{ base }}assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Template CSS -->
    <link type="text/css" media="all" href="{{ base }}assets/css/style.css" rel="stylesheet" />
    <!-- Responsive CSS -->
    <link type="text/css" media="all" href="{{ base }}assets/css/respons.css" rel="stylesheet" />

    <!-- Favicons -->
    <link rel="apple-touch-icon" sizes="144x144" href="{{ base }}assets/img/favicons/favicon144x144.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="{{ base }}assets/img/favicons/favicon114x114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="{{ base }}assets/img/favicons/favicon72x72.png" />
    <link rel="apple-touch-icon" href="{{ base }}assets/img/favicons/favicon57x57.png" />
    <link rel="shortcut icon" href="{{ base }}assets/img/favicons/favicon.png" />
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

</head>
<body>

    <!-- Load page -->
    <div class="animationload">
        <div class="loader">
        </div>
    </div>
    <!-- End load page -->


    <!-- Content Wrapper -->
    <div id="wrapper">
        <div class="container">
            <div class="col-xs-12 col-sm-7 col-lg-7">
                <!-- Info -->
                <div class="info">
                    <h1>{{ code }}</h1>
                    <h2>{{ status }}</h2>
                    <p>{{ message }}</p><!-- -->
                    <a href="{{ settings.base }}" class="btn">Go Home</a><!-- --
                    <a href="#" class="btn btn-brown">Contact Us</a><!-- -->
                </div>
                <!-- end Info -->
            </div>

            <div class="col-xs-12 col-sm-5 col-lg-5 text-center">
                <!-- Monkey -->
                <div class="monkey">
                    <img src="{{ base }}assets/img/monkey.gif" alt="Monkey" />
                </div>
                <!-- end Monkey -->
            </div>

        </div>
        <!-- end container -->
    </div>
    <!-- end Content Wrapper -->


    <!-- Scripts -->
    <script src="{{ base }}assets/js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="{{ base }}assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="{{ base }}assets/js/modernizr.custom.js" type="text/javascript"></script>
    <script src="{{ base }}assets/js/jquery.nicescroll.min.js" type="text/javascript"></script>
    <script src="{{ base }}assets/js/scripts.js" type="text/javascript"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</body>
</html>
