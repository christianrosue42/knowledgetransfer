GraphQL Java Guide:
https://hasura.io/blog/the-ultimate-graphql-for-java-guide


***********************************
Prototyp Architektur:
##################
##################


Application
##################
##################

Java (vers. JDK 17 SE?)
###########

spring vers
-------


maven
------


dependencies:
-----------
<artifactId>spring-boot-starter-data-jdbc</artifactId>
<artifactId>spring-boot-starter-data-ldap</artifactId>
<artifactId>spring-boot-starter-graphql</artifactId>
<artifactId>spring-boot-docker-compose</artifactId>
<artifactId>spring-boot-starter-test</artifactId>
<artifactId>spring-webflux</artifactId> (spring dependency wirft Fehler)
<artifactId>spring-graphql-test</artifactId>


Security
##################
##################
Directory Services (LDAP) or Identity Provider (IdP) to manage user authentication


Deployment
##################
##################

Jenkins?

docker & docker-compose
###########
Container:
--------------------------------------------------------- 
1. webshpere-liberty (opensource "lightweight" websphere
---------------------------------------------------------
 
docker run -d -p 80:9080 websphere-liberty:latest

https://hub.docker.com/_/websphere-liberty
https://www.ibm.com/docs/en/was-liberty/base?topic=setting-up-liberty


Port?
servlet-3.0 - 	HTTP port: 9080
			-	HTTPS port: 9443
https://www.ibm.com/docs/en/was-liberty/base?topic=liberty-default-port-numbers

Volume?
/wlp/usr/servers/server_name directory. This directory contains the server.xml and server.env files

--------------------------------------------------------- 
2. LDAP
--------------------------------------------------------- 

Port: 389 for LDAP, 636 for LDAP Server



API:
###########

IBM FileNet Content Services GraphQL API
https://www.ibm.com/docs/en/filenet-p8-platform/5.6.0?topic=tasks-installing-configuring-filenet-content-services-graphql-api


GraphQL
##########

schema of the Content Services GraphQL API:
https://github.com/ibm-ecm/ibm-content-platform-engine-samples/blob/master/CS-GraphQL-Schema/csgraphql_schema.graphqls

***************************************
  


