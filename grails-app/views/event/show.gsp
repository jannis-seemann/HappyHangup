
<%@ page import="happyHangup.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-event" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list event">
			
				<g:if test="${eventInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="event.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${eventInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.timestamp}">
				<li class="fieldcontain">
					<span id="timestamp-label" class="property-label"><g:message code="event.timestamp.label" default="Timestamp" /></span>
					
						<span class="property-value" aria-labelledby="timestamp-label"><g:formatDate date="${eventInstance?.timestamp}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.locationAddress}">
				<li class="fieldcontain">
					<span id="locationAddress-label" class="property-label"><g:message code="event.locationAddress.label" default="Location Address" /></span>
					
						<span class="property-value" aria-labelledby="locationAddress-label"><g:fieldValue bean="${eventInstance}" field="locationAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.locationLong}">
				<li class="fieldcontain">
					<span id="locationLong-label" class="property-label"><g:message code="event.locationLong.label" default="Location Long" /></span>
					
						<span class="property-value" aria-labelledby="locationLong-label"><g:fieldValue bean="${eventInstance}" field="locationLong"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.locationLat}">
				<li class="fieldcontain">
					<span id="locationLat-label" class="property-label"><g:message code="event.locationLat.label" default="Location Lat" /></span>
					
						<span class="property-value" aria-labelledby="locationLat-label"><g:fieldValue bean="${eventInstance}" field="locationLat"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="event.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="category" action="show" id="${eventInstance?.category?.id}">${eventInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="event.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="organizer" action="show" id="${eventInstance?.user?.id}">${eventInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eventInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eventInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
