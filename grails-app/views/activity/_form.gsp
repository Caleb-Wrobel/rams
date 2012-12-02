<%@ page import="com.rams.Activity" %>



<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="activity.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${activityInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'number', 'error')} ">
	<label for="number">
		<g:message code="activity.number.label" default="Number" />
		
	</label>
	<g:textField name="number" pattern="${activityInstance.constraints.number.matches}" value="${activityInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="activity.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${activityInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'startTime', 'error')} required">
	<label for="startTime">
		<g:message code="activity.startTime.label" default="Start Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startTime" precision="minute"  value="${activityInstance?.startTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'endTime', 'error')} required">
	<label for="endTime">
		<g:message code="activity.endTime.label" default="End Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endTime" precision="minute"  value="${activityInstance?.endTime}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'maxEnrollment', 'error')} required">
	<label for="maxEnrollment">
		<g:message code="activity.maxEnrollment.label" default="Max Enrollment" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxEnrollment" type="number" value="${activityInstance.maxEnrollment}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'minAge', 'error')} required">
	<label for="minAge">
		<g:message code="activity.minAge.label" default="Min Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="minAge" type="number" value="${activityInstance.minAge}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'maxAge', 'error')} required">
	<label for="maxAge">
		<g:message code="activity.maxAge.label" default="Max Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxAge" type="number" value="${activityInstance.maxAge}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'enrollments', 'error')} ">
	<label for="enrollments">
		<g:message code="activity.enrollments.label" default="Enrollments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${activityInstance?.enrollments?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['activity.id': activityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: activityInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="activity.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${com.rams.Facility.list()}" optionKey="id" required="" value="${activityInstance?.facility?.id}" class="many-to-one"/>
</div>

