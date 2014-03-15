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
                <g:link controller="startPageFrontend" action="index" class="navbar-brand">HappyHangup</g:link>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <li>
                        <g:link controller="organizerFrontend" action="index" class="">Organizers</g:link>
                    </li>
                    <li>
                        <g:link controller="eventFrontend" action="index" class="">Events</g:link>

                    </li>
                    <li>
                        <g:link controller="developerFrontend" action="index" class="">Developers</g:link>
                    </li>
                </ul>

                    <form class="navbar-form navbar-right" role="form">
                        <div class="form-group">
                            <input type="text" placeholder="Email" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="password" placeholder="Password" class="form-control">
                        </div>
                        <g:link controller="eventFrontend" action="index" class="btn btn-success">Sign in</g:link>
                        <g:link controller="eventFrontend" action="index" class="btn btn-success">Sign up</g:link>
                    </form>







            </div>


        </div>
    </header>

    <div class="container">

        <g:layoutBody/>
    </div>

<r:layoutResources />

<!-- include my footer html here -->
<div class="panel-footer">
    <div class="pull-right">
        <p>
            Designed and built with all the love. Code licensed under
    <a href="#">MIT</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <br>
        </p>
    </div>
    </div>

</body>
</html>