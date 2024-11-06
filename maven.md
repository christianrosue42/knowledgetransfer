## Build Tool

### commands



#### allow unsecure repos from http
##### add this mirror to ~\Maven\apache-maven-3.9.9\conf\settings.xml
```
<!-- allow downloading from your insecure repository by uncommenting this mirror -->
	<mirror>
		<id>jaspersoft-third-party-mirror</id>
		<mirrorOf>jaspersoft-third-party</mirrorOf>
		<url>http://jaspersoft.jfrog.io/jaspersoft/third-party-ce-artifacts/</url>
		<blocked>false</blocked>
	</mirror>
```

You can also unblock **individual repositories**. For example, the ECMRD Maven Repository & ECMRD Maven Snapshot Repository are insecure, I unblock it with:

```
<mirror>
  <id>jaspersoft-third-party-mirror</id>
  <mirrorOf>jaspersoft-third-party</mirrorOf>
  <url>http://repository-ecmrd01:8081/nexus/content/repositories/ecmrd/</url>
  <blocked>false</blocked>
</mirror>

<mirror>
  <id>jaspersoft-third-party-mirror</id>
  <mirrorOf>jaspersoft-third-party</mirrorOf>
  <url>http://repository-ecmrd01:8081/nexus/content/repositories/ecmrd-snapshot/</url>
  <blocked>false</blocked>
</mirror>
```