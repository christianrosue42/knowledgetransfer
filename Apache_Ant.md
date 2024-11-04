# Apache Ant
[[Build tool]]
Ant is extended using Java classes. 
Instead of writing shell commands, the configuration files are **XML-based**

cross-platform

### Documentation
[Apache Ant - Documentation](https://ant.apache.org/manual/index.html)

uses [apache ivy](/Apache_Ivy.md) for [dependency management]()

### Version (local)
Ant **1.10.15** has been released on 29th August 2024

### List of common commands
common Apache Ant commands:

ant: Runs the default target specified in the build.xml file.
ant [target]: Runs a specific target defined in the build.xml file.
ant -projecthelp: Lists all targets in the build.xml file with their descriptions.
ant -verbose: Runs Ant in verbose mode, displaying additional details during execution.
ant -debug: Runs Ant in debug mode, providing detailed stack traces and debug information.
ant -propertyfile [filename]: Loads properties from the specified file.
ant -f [filename]: Uses a specified build.xml file instead of the default one.
ant -D[name]=[value]: Sets a property value from the command line.
ant -lib [path]: Adds the specified path to the Ant library path, allowing the use of additional tasks or types.

### [SVN](https://subversion.apache.org/download/)
https://isr-confluence.atlassian.net/wiki/spaces/AM/pages/124794093/SVN+Installieren+PEIO#SVNInstallieren(PEIO)-SlikSubversion1.6.9Installieren

Subversion software, also called SVN, is an open source **version control system**.

#### Version
latest and recommended LTS (long-term support) release of Apache Subversion is: 1.14

Subversion (SVN) allows teams to look at previous file versions and track their changes (now theres [git](git.md)), 
but SVN is still used in industries that prioritize **centralized control** and **strict access management**. 
These include large enterprises, government agencies, and defense contractors that need strong security and auditability


#### Installation
https://isr-confluence.atlassian.net/wiki/spaces/DO/pages/124062071/Einrichten+eines+Entwickler-Rechners+mit+ant+und+ivy