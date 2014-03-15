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
</head>

<body>

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->


    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <g:img uri="/images/banner1.jpg"  width="1400" />
    </div>


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