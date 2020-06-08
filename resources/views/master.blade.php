<!DOCTYPE html>
<html dir="ltr" lang="en-US">

<head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="SemiColonWeb" />

    <!-- Stylesheets
	============================================= -->
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700,800|Homemade+Apple|Sahitya:400,700|Roboto:400,700|Playfair+Display:900|Alegreya+Sans:400,700,800|Nunito:400,300,700" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="source/css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="source/style.css" type="text/css" />
    <link rel="stylesheet" href="source/css/dark.css" type="text/css" />
    <link rel="stylesheet" href="source/css/font-icons.css" type="text/css" />
    <link rel="stylesheet" href="source/one-page/css/et-line.css" type="text/css" />
    <link rel="stylesheet" href="source/css/animate.css" type="text/css" />
    <link rel="stylesheet" href="source/css/magnific-popup.css" type="text/css" />

    <!--  Pricing Tables Style  -->
    <link rel="stylesheet" href="source/css/components/pricing-table.css" type="text/css" />

    <link rel="stylesheet" href="source/css/responsive.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />



    <!-- Document Title
	============================================= -->
    <title>Support Services | DucPM</title>


</head>

<body class="stretched">

    <!-- Document Wrapper
	============================================= -->
    <div id="wrapper" class="clearfix">

        @include('header')

        @yield('content')

        @include('footer')
    </div><!-- #wrapper end -->

    <!-- Go To Top
	============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- External JavaScripts
	============================================= -->
    <script src="source/js/jquery.js"></script>
    <script src="source/js/plugins.js"></script>

    <!-- Footer Scripts
	============================================= -->
    <script src="source/js/functions.js"></script>
    @yield('javascript')
</body>
</html>