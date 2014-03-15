<%--
  Created by IntelliJ IDEA.
  User: msingh
  Date: 3/15/14
  Time: 2:20 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="frontend">
    <title>Home</title>

    <style>
    /* GLOBAL STYLES
-------------------------------------------------- */
    /* Padding below the footer and lighter body text */

    body {
        padding-bottom: 40px;
        color: #5a5a5a;
    }



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
    .navbar-wrapper {
        position: absolute;
        top: 0;
        right: 0;
        left: 0;
        z-index: 20;
    }

    /* Flip around the padding for proper display in narrow viewports */
    .navbar-wrapper .container {
        padding-right: 0;
        padding-left: 0;
    }
    .navbar-wrapper .navbar {
        padding-right: 15px;
        padding-left: 15px;
    }


    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
        height: 500px;
        margin-bottom: 60px;
    }
    /* Since positioning the image, we need to help out the caption */
    .carousel-caption {
        z-index: 10;
    }

    /* Declare heights because of positioning of img element */
    .carousel .item {
        height: 500px;
        background-color: #777;
    }
    .carousel-inner > .item > img {
        position: absolute;
        top: 0;
        left: 0;
        min-width: 100%;
        height: 500px;
    }



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Pad the edges of the mobile views a bit */
    .marketing {
        padding-right: 15px;
        padding-left: 15px;
    }

    /* Center align the text within the three columns below the carousel */
    .marketing .col-lg-4 {
        margin-bottom: 20px;
        text-align: center;
    }
    .marketing h2 {
        font-weight: normal;
    }
    .marketing .col-lg-4 p {
        margin-right: 10px;
        margin-left: 10px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
        margin: 80px 0; /* Space out the Bootstrap <hr> more */
    }

    /* Thin out the marketing headings */
    .featurette-heading {
        font-weight: 300;
        line-height: 1;
        letter-spacing: -1px;
    }



    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (min-width: 768px) {

        /* Remove the edge padding needed for mobile */
        .marketing {
            padding-right: 0;
            padding-left: 0;
        }

        /* Navbar positioning foo */
        .navbar-wrapper {
            margin-top: 20px;
        }
        .navbar-wrapper .container {
            padding-right: 15px;
            padding-left:  15px;
        }
        .navbar-wrapper .navbar {
            padding-right: 0;
            padding-left:  0;
        }

        /* The navbar becomes detached from the top, so we round the corners */
        .navbar-wrapper .navbar {
            border-radius: 4px;
        }

        /* Bump up size of carousel content */
        .carousel-caption p {
            margin-bottom: 20px;
            font-size: 21px;
            line-height: 1.4;
        }

        .featurette-heading {
            font-size: 50px;
        }
    }

    @media (min-width: 992px) {
        .featurette-heading {
            margin-top: 120px;
        }
    }
    </style>
</head>

<body>
<!--




<div class="jumbotron">


<div id="myCarousel" class="carousel slide" data-ride="carousel">

    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="http://placekitten.com/904/502" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Example headline.</h1>
                    <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="http://placekitten.com/900/500" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Another example headline.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">

            <img src="http://placekitten.com/902/501" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>One more for good measure.</h1>
                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
-->

<div class="carousel-inner">
    <g:img uri="/images/banner1.jpg"  width="1400" />
</div>

    <div class="jumbotron">
    <h1>HappyHangup</h1>
    <p>HappyHangup aims to strengthen the competence and understanding of the youth. It provide open interface to
    youth to engage and involve them into group activities, group games and learn via meet ups.  The activities are
    targeted to the youth and developed in close cooperation with organizations in the public and third sectors. </p>
    <p><a class="btn btn-primary btn-lg" role="button">Learn more</a></p>
</div>

<div class="panel panel-info">
    <div class="panel-heading">
        <h3 class="panel-title">Find Your Interest</h3>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-sm-15 col-md-2">
                <div class="caption">
                    <ul class="pager">
                        <li><a href="#">Guitar <span class="badge">9</span> </a></li>
                    </ul>
                </div>
            </div>

            <div class="col-sm-15 col-md-2">
                <div class="caption">
                    <ul class="pager">
                        <li><a href="#">Pop Music <span class="badge">9</span> </a></li>
                    </ul>
                </div>
            </div>

            <div class="col-sm-15 col-md-2">
                <div class="caption">
                    <ul class="pager">
                        <li><a href="#">Piono Geeks <span class="badge">9</span> </a></li>
                    </ul>
                </div>
            </div>

            <div class="col-sm-15 col-md-2">
                <div class="caption">
                    <ul class="pager">
                        <li><a href="#">Bicycling <span class="badge">9</span> </a></li>
                    </ul>
                </div>
            </div>

            <div class="col-sm-15 col-md-2">
                <div class="caption">
                    <ul class="pager">
                        <li><a href="#">Piono Geeks <span class="badge">9</span> </a></li>
                    </ul>
                </div>
            </div>







            <div class="col-sm-15 col-md-2">
                <div class="caption">
                    <ul class="pager">
                        <li>
                            <g:link controller="interestFrontend" action="index">Find More </g:link>
                        </li>
                    </ul>


                </div>
            </div>

        </div>
    </div>



</div>



</body>
</html>