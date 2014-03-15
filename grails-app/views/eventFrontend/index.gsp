<%--
  Created by IntelliJ IDEA.
  User: msingh
  Date: 3/15/14
  Time: 2:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="frontend" />
    <title>All Events</title>
</head>

<body>

<div class="pull-right">
    <!-- Large button group -->
    <div class="btn-group">
        <button class="btn btn-default btn-lg dropdown-toggle" type="button" data-toggle="dropdown">
            Browse Categories <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <g:each in="${happyHangup.Category.findAll()}" var="currentCategory">
                <li>
                    <g:link controller="eventFrontend" action="indexByCategoryId" params="${[categoryId: currentCategory.id]}">
                        ${currentCategory.name}
                    </g:link>
                </li>
            </g:each>
        </ul>
    </div>
</div>

<blink>
    <h1>All Events</h1>
</blink>
<g:each in="${events}" var="event">

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                <g:link action="show" id="${event.id}">
                    <g:if test="${event.name}">
                        ${event.name}
                    </g:if>

                </g:link>
            </h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-3">
                    <g:link action="show" id="${event.id}">
                        <img class="img-responsive" src="http://placekitten.com/${300 + event.id}/${300 + event.id}" />
                    </g:link>
                </div>
                <div class="col-md-9">
                    <p>
                        Helvetica trust fund master cleanse Tumblr. Carles cardigan Intelligentsia next level, fingerstache tattooed American Apparel. Synth keytar ennui, cray ethnic roof party single-origin coffee tote bag cornhole Pinterest bicycle rights gastropub Cosby sweater. Cliche before they sold out shabby chic, retro sustainable bespoke selfies umami Truffaut Banksy High Life Etsy. Narwhal meggings scenester readymade roof party Shoreditch viral Austin. Before they sold out readymade trust fund Intelligentsia. Bitters small batch Marfa, High Life meh pour-over fixie.
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
                    </p>
                </div>
            </div>
        </div>
    </div>
</g:each>
</body>
</html>