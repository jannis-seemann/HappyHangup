
<%@ page import="happyHangup.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="timestamp" title="${message(code: 'event.timestamp.label', default: 'Timestamp')}" />
					
						<th><g:message code="event.category.label" default="Category" /></th>
					
						<g:sortableColumn property="locationAddress" title="${message(code: 'event.locationAddress.label', default: 'Location Address')}" />
					
						<g:sortableColumn property="locationLat" title="${message(code: 'event.locationLat.label', default: 'Location Lat')}" />
					
						<g:sortableColumn property="locationLong" title="${message(code: 'event.locationLong.label', default: 'Location Long')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${eventInstance.timestamp}" /></td>
					
						<td>${fieldValue(bean: eventInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "locationAddress")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "locationLat")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "locationLong")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
