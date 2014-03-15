<%--
  Created by IntelliJ IDEA.
  User: jannisseemann
  Date: 15/03/14
  Time: 01:15 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="frontend">
    <title>Browse Categories</title>
</head>

<body>
<ul>
    <g:each in="${categoryInstanceList}" var="categoryInstance">
        <li>
            ${categoryInstance}
        </li>
    </g:each>
</ul>

</body>
</html>