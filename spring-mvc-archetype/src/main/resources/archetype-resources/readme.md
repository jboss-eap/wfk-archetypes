Getting Started with Spring MVC on JBoss AS 7
=============================================+

This as a Spring MVC example application for JBoss AS 7.  It can be deployed like any other web application, by building the .war, copying it into the server's deployments folder, and starting the server.
Alternatively, it can be built and run using Maven Archetypes, to do so,
see the instructions below.

Data Source Configuration
======================================

The example uses the java:jboss/datasources/SpringQuickstartDS database, configured by the application.

Running with JBoss AS 7
========================

First, build the project

    mvn clean package
	
Then, open a separate terminal and navigate to ${JBOSS_AS_7_HOME}/bin and execute the command:

	./standalone.sh (use standalone.bat for Windows users)
	
In the terminal open to getting-started, execute the following command to deploy:

	$ mvn jboss-as:deploy
	
To undeploy or redeploy the application, the following commands can be used:
	
	$ mvn jboss-as:undeploy
	
	$ mvn jboss-as:redeploy
	 