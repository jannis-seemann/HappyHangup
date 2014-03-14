<%@ page import="happyHangup.Organizer" %>



<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="organizer.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${organizerInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="organizer.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${organizerInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="organizer.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${organizerInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: organizerInstance, field: 'companyName', 'error')} ">
	<label for="companyName">
		<g:message code="organizer.companyName.label" default="Company Name" />
		
	</label>
	<g:textField name="companyName" value="${organizerInstance?.companyName}"/>

</div>

