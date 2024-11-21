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