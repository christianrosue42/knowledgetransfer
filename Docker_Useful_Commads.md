------------------
PostgreSQL Docker Image starten (mit credentials)
Pull from:
https://hub.docker.com/_/postgres

docker run -d --name bananaDBServerContainer -e POSTGRES_DB=bananaDB -e POSTGRES_USER=bananaDBAdmin -e POSTGRES_PASSWORD=bernerner42 -p 5432:5432 postgres
------------------

------------------
IBM Websphere Liberty:
Pull from:
https://hub.docker.com/_/websphere-liberty

docker run -d -p 80:9080 websphere-liberty:latest

Configuration
https://www.ibm.com/docs/en/was-liberty/base?topic=setting-up-liberty


Port?
servlet-3.0 - 	HTTP port: 9080
			-	HTTPS port: 9443
------------------

------------------
