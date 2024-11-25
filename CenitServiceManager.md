# Cenit Service Manager
admin admin

- "Framework für kundenspezifische Services"
- Integrationsplattform (Basis-Komponente)
- setzt [EIP](EIP_Enterprise_Integration_Patterns.md)

### Ansprechpersonen
ISR:
- Cihat Boz
- Malte Engbers
- Helge Schneider
- Dirk ? - Product Owner?

## Technologie
#### Java
Vers 11
Karaf
Camel

## Wie erstellt man einen einfachen Service?
1. Neue XML Datei erstellen
2. Manifest Header setzen

<?xml version="1.0" encoding="UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:camel="http://camel.apache.org/schema/spring"
	xsi:schemaLocation="
		http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans.xsd
		http://camel.apache.org/schema/spring http://camel.apache.org/schema/spring/camel-spring.xsd">

	<import resource="classpath:de/cenit/ecmrd/servicemanager/core/service-base.xml" />

	<manifest xmlns="http://karaf.apache.org/xmlns/deployer/spring/v1.0.0">
		Cenit-Service-Id=helloworld
		Cenit-Service-Name=A Hello World
		Bundle-Version=1.0.0
	</manifest>

	<camelContext id="helloworld" xmlns="http://camel.apache.org/schema/spring">
		<route id="helloworld-route">
			<from uri="timer:helloworld?repeatCount=10" />
			<to uri="log:helloworld?showBody=true" />
		</route>
	</camelContext>
</beans>

Erläuterung:
 - Mit dem Import der service-base.xml steht die Services Funktionalität zur Verfügung
 - CamelContext-ID muss gleich der ServiceID sein
 - Default ist useMDCLogging="false" / Kein Service-Logging 
 - Default ist autoStartup="false" / Service startet nicht automatisch
 - Service sollten nach Möglichkeit als XML ausgeliefert werden 

## commands
### start service manager
./start.bat

### start sm client 
./client.bat -u <username>

### show log (only Errors)
log:tail | grep ERROR

### show datasources (db etc)
jdbc:ds-list

### show Services
service:list

service:list DataSourceFactory

### show features
feature:list

feature:list | grep camel

### feature install
feature:install <featurename>

### featur repo 
feature:repo-list

### bundle in karaf deployen (bash)
cp <pathtobundle>.jar(.xml etc) $KARAF_HOME/deploy

        TAB + y                    // Listet alle Commands auf
        help myCommand             // Zeigt Hilfe für das Command an
        bundle:watch mvn*          // Automatisches Redeployment der OSGi - Bundles
        find-class myClass         // Suche nach einer Klasse
        feature:list               // Liste die Features auf
        la                         // Liste alle Bundles auf
        ld                         // Zeige den Log
        exception-display          // Zeige die letzte Ausnahme
        exports  | grep de.cenit   // Listet Bundels auf die das Package exportieren  
        imports  | grep de.cenit   // Listet Bundels auf die das Package importieren
        headers BundleID           // Listet alle OSGi-Header des Bundles auf, hier kann man sofort erkennen ob bestimmte Packages fehlen 
        grep                       // Allgemein Suchen in der Ausgabe
        dump-create myFilename     // Erstellt ein Zip-Datei mit Laufzeitinformationen des Servicemanagers
        encryptpassword            // Verschlüsselt ein Password
        listservices               // Listet alle Deployten Servises auf
        reloadservice              // Komplettes Neu-Einlesen des Service 
        startservice               // Startet einen oder mehrere Services 
        stopservice                // Stoppt einen oder mehrere Services 
        bundle:update ID           // Komplettes Neu-Einlesen des Bundles 