<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

	<head>
		<title>Java EE 6 Starter Application</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/screen.css"/>"/>
	</head>

	<body>
		<div id="container">
			<div class="dualbrand">
				<img src="<c:url value="/static/resources/gfx/dualbrand_logo.png"/>"/>
			</div>
			<div id="content">
				<h1>Welcome to JBoss!</h1>
				
				<div>
					<p>You have successfully deployed a Java EE 6 web application.</p>
					<p>Your application can run on:</p>
					<img src="<c:url value="/static/resources/gfx/dualbrand_as7eap.png"/>">
				</div>
				<form:form commandName="newMember" id="reg">
					<h2>Member Registration</h2>
					<p>Enforces annotation-based constraints defined on the model class</p>
					<table>
						<tbody>
							<tr>
								<td><form:label path="name">Name:</form:label></td>
								<td><form:input path="name"/></td>
								<td><form:errors class="invalid" path="name"/></td>
							</tr>
							<tr>
								<td><form:label path="email">Email:</form:label></td>
								<td><form:input path="email"/></td>
								<td><form:errors class="invalid" path="email"/></td>
							</tr>
							<tr>
								<td><form:label path="phoneNumber">Phone #:</form:label>
								<td><form:input path="phoneNumber"/></td>
								<td><form:errors class="invalid" path="phoneNumber"/></td>
							</tr>
						</tbody>
					</table>
					<br/>
					<input type="submit" value="Register"/>
				</form:form>
				<h2>Members</h2>
				<table>
					<thead>
						<tr>
							<td>Id</td>
							<td>Name</td>
							<td>Email</td>
							<td>Phone #</td>
							<td>REST URL</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${members}" var="member">
							<tr>
								<td>${member.id}</td>
								<td>${member.name}</td>
								<td>${member.email}</td>
								<td>${member.phoneNumber}</td>
								<td><a href="<c:url value="/rest/members/${member.id}"/>">/rest/members/${member.id}</a></td>
						</c:forEach>
					</tbody>
				</table>
				<div id="footer">
					REST URL for all members: <a href="<c:url value="/rest/members"/>">/rest/members</a>
				</div>

				<div id="aside">
					<p>Learn more about JBoss Enterprise Application Platform 6.</p>
			         <ul>
			            <li><a
			               href="http://red.ht/jbeap-6-docs">Documentation</a></li>
			            <li><a href="http://red.ht/jbeap-6">Product Information</a></li>
			         </ul>
			         <p>Learn more about JBoss AS 7.</p>
			         <ul>
			            <li><a
			               href="https://docs.jboss.org/author/display/AS7/Getting+Started+Developing+Applications+Guide">Getting Started Developing Applications Guide</a></li>
			            <li><a href="http://jboss.org/jbossas">Community Project Information</a></li>
			         </ul>            
			      </div>
			      <div id="footer">
			         <p>
			            This project was generated from a Maven archetype from
			            JBoss.<br />
			         </p>
				</div>
			</div>
		</div>
	</body>
</html>
