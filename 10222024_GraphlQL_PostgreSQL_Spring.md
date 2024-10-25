***********************************
Prototyp Architektur:
##################
##################


Application
##################
##################

Model-View-Controller


Java (vers. JDK 17 SE?)
###########

spring vers
-------


maven
------


dependencies:
-----------
<artifactId>spring-boot-starter-data-jpa</artifactId>
<artifactId>spring-boot-starter-graphql</artifactId>
<artifactId>spring-boot-starter-web</artifactId>
/* <artifactId>spring-boot-docker-compose</artifactId> */
<artifactId>spring-boot-starter-test</artifactId>
<artifactId>postgresql</artifactId>
<artifactId>spring-graphql-test</artifactId>


Security
##################
##################


Deployment
##################
##################

docker & docker-compose
###########
Container:
--------------------------------------------------------- 

Port?
HTTP port: 5432
C:\DEV\Java\Playground\graphqldemo\prototype\src\main\java\com\graphqlexample\prototype\AuthorRepository.java

API:
###########
Spring Data JPA - Jakarta EE

Datenresource (PostgreSQL) hinzufügen (Spring):
Adding dependency to pom.xml (wird zum Classpath hinzugefügt):
<dependencies>
    <dependency>
        <groupId>org.postgresql</groupId>
        <artifactId>postgresql</artifactId>
        <version>42.7.4</version>
    </dependency>    
</dependencies>
 
application.properties file:


GraphQL
##########
Schema
In your Spring for GraphQL application prepared earlier, 
add a new file:
	- schema.graphqls to the src/main/resources/graphql folder

GraphQL Client:
GraphiQL

application.properties file:
spring.graphql.graphiql.enabled=true


***************************************

Learnings:

VSCode:
Auto Generating Getters and Setters etc.
Right Click in CodeEditor - Source Action - Getters & Setters


Clean Local Repository:
Delete the contents of your local Maven repository 
(C:\Users\christian.rosue\.m2\repository) and run the build again 
to ensure there are no corrupted files.