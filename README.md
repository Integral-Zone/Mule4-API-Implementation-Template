# API Template for Mule 4

API Template to serve as a starting point for developers to build applications. This template has been forked from (Mulesoft-Catalyst/api-template-mule4.x) https://github.com/mulesoft-catalyst/api-template-mule4.x and enhanced. This template should be published to organization's private exchange and used to create new projects by using "create project using template" in Anypoint Studio. This template uses 2 Mule Extensions:

1. JSON Logger: This is used for Logging in the API and is custom plugin built by Andres Ramirez from Services and is present at https://github.com/mulesoft-catalyst/json-logger/tree/mule-4.x . Please publish this to your private Exchange before publishing the template. The guide to publiush it present the above link.

2. Error Handler Plugin: This is a common error handler that is fully customizable and is used by the template to handle errors. In case of an error the On Error Propgate is used which sends the information to the error handler which then handles the error, maps to the error object and prints it. This was built by Biswa Mohanty from Services and is present at https://github.com/mulesoft-catalyst/error-handler-plugin. You need to publish this to Exchange before using the template. 

You may encounter build errors while building the above two due to the plugin used to build the extensions. To fix that, please add below snippet in pom.xml of the extentions:

```
<pluginRepositories>
    <pluginRepository>
       	<id>mulesoft-releases</id>
			<name>MuleSoft Releases Repository</name>
			<url>http://repository.mulesoft.org/releases/</url>
			<layout>default</layout>
    </pluginRepository>
</pluginRepositories>
```

## Deploying to Exchange
Get rid of README.md, getting-started.md and rename application-README.md to README.md before publishing to exchange.

To deploy to Exchange, run the script named deploy.sh as follows,

./deploy.sh <YOUR_ORG_ID>

Please ensure that your settings.xml has been configured with the correct Exchange credentials so that the publish can succeed. This is how you do maven setup:

### Maven Setup

1. Please note that the following configuration should be in the settings.xml within your <USER_HOME>/.m2 folder:
```
	<!-- HA development wide access to Mule Nexus EE repositories -->
	<server>
	    <id>MuleRepository</id>
	    <username><NEXUS_USER></username>
	    <password><NEXUS_PASSWORD></password>
	</server>
	<!-- HA Anypoint Exchange access -->
	<server>
		<id>Exchange2</id>
		<username><ANYPOINT_USER></username>
		<password><ANYPOINT_PASSWORD></password>
	</server>
```

## Local Install
For local install, give any groupId. Issue `mvn clean install`

## Usage

Create a new Mule project and select create project from template, select this template and start building your API implementation.

Also view the getting-started.md file that explains how to use template
