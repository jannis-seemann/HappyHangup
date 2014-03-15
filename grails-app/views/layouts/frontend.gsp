<%--
  Created by IntelliJ IDEA.
  User: jannisseemann
  Date: 15/03/14
  Time: 01:31 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>
        <g:layoutTitle />
    </title>
    <g:layoutHead/>
    <g:javascript library="frontend"/>
    <r:layoutResources />
</head>

<body>
    <header class="navbar navbar-inverse" id="top" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="../" class="navbar-brand">HappyHangup</a>
            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Browse Categories <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <g:each in="${happyHangup.Category.findAll()}" var="currentCategory">
                                <li>
                                    <g:link controller="eventFrontend" action="indexByCategoryId" params="${[categoryId: currentCategory.id]}">
                                        ${currentCategory.name}
                                    </g:link>
                                </li>
                            </g:each>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">

        <g:layoutBody/>
    </div>

    <r:layoutResources />
</body>
</html>