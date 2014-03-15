<%--
  Created by IntelliJ IDEA.
  User: jannisseemann
  Date: 15/03/14
  Time: 01:43 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="frontend" />
    <title></title>
    <style>
        /*
    @-webkit-keyframes spin {
        from {
            opacity: 0.75;
            -webkit-transform: rotate(0deg);
            -webkit-animation-timing-function: linear;
        }
        50% {
            opacity: 0.90;
            -webkit-transform: rotate(180deg);
            -webkit-animation-timing-function: linear;
        }
        to   {
            opacity: 0.75;
            -webkit-transform: rotate(360deg);
            -webkit-animation-timing-function: linear;
        }
    }

    @-webkit-keyframes scaleBigAndDown {
        from {
            -webkit-transform: scale(1);
            -webkit-animation-timing-function: linear;
        }
        50% {
            -webkit-transform: scale(1.2);
            -webkit-animation-timing-function: linear;
        }
        to   {
            -webkit-transform: scale(1);
            -webkit-animation-timing-function: linear;
        }
    }

    .show-event-image {
        -webkit-animation-name: spin;
        -webkit-animation-duration: 6s;
        -webkit-animation-iteration-count: infinite;
    }

    .event-login-facebook .btn-primary {
        -webkit-animation-name: scaleBigAndDown;
        -webkit-animation-duration: 3s;
        -webkit-animation-iteration-count: infinite;
    }
    .event-login-facebook .btn-danger {
        -webkit-animation-name: scaleBigAndDown;
        -webkit-animation-duration: 5s;
        -webkit-animation-iteration-count: infinite;
    }
    .event-desc {
        -webkit-animation-name: scaleBigAndDown;
        -webkit-animation-duration: 7s;
        -webkit-animation-iteration-count: infinite;
    }
        .panel {
            -webkit-animation-name: scaleBigAndDown;
            -webkit-animation-duration: 11s;
            -webkit-animation-iteration-count: infinite;
        }
        */
    </style>
    <style>
    #map_canvas {
        width: 500px;
        height: 400px;
    }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
        function initialize() {
            var map_canvas = document.getElementById('map_canvas');
            var map_options = {
                center: new google.maps.LatLng(44.5403, -78.5463),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(map_canvas, map_options)
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>

<body>
<h1>Show event:</h1>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            ${event.name}
        </h3>
    </div>
    <div class="panel-body">
        <div class="row">
            <div class="col-md-3">
                <img class="show-event-image img-circle img-responsive" src="http://placekitten.com/${300 + event.id}/${300 + event.id}" />
            </div>
            <div class="col-md-9">
                <p class="event-desc">
                    Helvetica trust fund master cleanse Tumblr. Carles cardigan Intelligentsia next level, fingerstache tattooed American Apparel. Synth keytar ennui, cray ethnic roof party single-origin coffee tote bag cornhole Pinterest bicycle rights gastropub Cosby sweater. Cliche before they sold out shabby chic, retro sustainable bespoke selfies umami Truffaut Banksy High Life Etsy. Narwhal meggings scenester readymade roof party Shoreditch viral Austin. Before they sold out readymade trust fund Intelligentsia. Bitters small batch Marfa, High Life meh pour-over fixie.
                </p>

                <g:if test="${event.name}">
                    <g:if test="${event.category.name}">
                        <h4> Category : ${event.category.name} </h4>
                    </g:if>
                </g:if>

                <h4> Event Starts On:
                <g:formatDate date="${event.timestamp}" format="yyyy-MM-dd"></g:formatDate>
                </h4>

                <h4> Event At:
                ${event.locationAddress}
                </h4>

                <!-- add google map  for  event location-->
                <div id="map_canvas"></div>
                <br>

                <!-- do not move this div. has to be directly befor the a.event-login-facebook -->
                <div style="display:none;">
                    <div class="alert alert-success">
                        <strong>Thank you!</strong> Thanks for participating in this event :-)
                    </div>
                </div>
                <div class="event-login-facebook btn-group">
                    <a href="#" class="btn btn-primary">
                        <i class="fa fa-facebook-square"></i>
                        Login with Facebook to join this event
                    </a>
                    <a href="#" class="btn btn-danger">
                        <i class="fa fa-google-plus"></i>
                        Login with Google+ to join this event
                    </a>
                </div>

            </div>
        </div>
    </div>
</div>
<g:javascript>
    jQuery(document).ready(function($) {
        $(".event-login-facebook").click(function() {
            $(this).hide().prev().show();
            return false;
        });
    });
</g:javascript>
</body>
</html>