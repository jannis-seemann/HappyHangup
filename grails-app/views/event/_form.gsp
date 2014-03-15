<%@ page import="happyHangup.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="event.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${eventInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'timestamp', 'error')} ">
	<label for="timestamp">
		<g:message code="event.timestamp.label" default="Timestamp" />
		
	</label>
	<g:datePicker name="timestamp" precision="day"  value="${eventInstance?.timestamp}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'locationAddress', 'error')} ">
	<label for="locationAddress">
		<g:message code="event.locationAddress.label" default="Location Address" />
		
	</label>
	<g:textField name="locationAddress" value="${eventInstance?.locationAddress}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'locationLong', 'error')} ">
	<label for="locationLong">
		<g:message code="event.locationLong.label" default="Location Long" />
		
	</label>
	<g:textField name="locationLong" value="${eventInstance?.locationLong}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'locationLat', 'error')} ">
	<label for="locationLat">
		<g:message code="event.locationLat.label" default="Location Lat" />
		
	</label>
	<g:textField name="locationLat" value="${eventInstance?.locationLat}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="event.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${happyHangup.Category.list()}" optionKey="id" required="" value="${eventInstance?.category?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="event.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${happyHangup.Organizer.list()}" optionKey="id" required="" value="${eventInstance?.user?.id}" class="many-to-one"/>

</div>

