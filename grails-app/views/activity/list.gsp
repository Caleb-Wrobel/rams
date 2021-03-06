
<%@ page import="com.rams.Activity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'activity.label', default: 'Activity')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-activity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-activity" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'activity.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="number" title="${message(code: 'activity.number.label', default: 'Number')}" />
					
						<g:sortableColumn property="startTime" title="${message(code: 'activity.startTime.label', default: 'Start Time')}" />
					
						<g:sortableColumn property="endTime" title="${message(code: 'activity.endTime.label', default: 'End Time')}" />
					
						<g:sortableColumn property="maxEnrollment" title="${message(code: 'activity.maxEnrollment.label', default: 'Max Enrollment')}" />
					
						<g:sortableColumn property="minAge" title="${message(code: 'activity.minAge.label', default: 'Min Age')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${activityInstanceList}" status="i" var="activityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${activityInstance.id}">${fieldValue(bean: activityInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: activityInstance, field: "number")}</td>
					
						<td><g:formatDate date="${activityInstance.startTime}" /></td>
					
						<td><g:formatDate date="${activityInstance.endTime}" /></td>
					
						<td>${fieldValue(bean: activityInstance, field: "maxEnrollment")}</td>
					
						<td>${fieldValue(bean: activityInstance, field: "minAge")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${activityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
