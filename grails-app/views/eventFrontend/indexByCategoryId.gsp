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
</head>

<body>
<blink>
    <h1>Browse Category: ${category.name}</h1>
</blink>
    <g:each in="${events}" var="event">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <g:link action="show" id="${event.id}">
                        ${event.name}
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
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </g:each>
</body>
</html>