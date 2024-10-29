## Apache Ivy Dependency Management
### Documentation:
[Apache Ivy](https://ant.apache.org/ivy/history/2.5.0-rc1/index.html)

- process agnostic and is not tied to any methodology or structure

### ivysettings.properties
needs to be stored in IVY_CONF_HOME or user.home

powershell:
```$env:IVY_CONF_HOME = "C:\path\to\your\ivyhome"```

#### ivy.rep.dir: 
This variable specifies the directory where Ivy will look for its **repository files**. 
The repository is where Ivy **stores** the artifacts (like JAR files) that it downloads or publishes.

##### ivy.cache.dir: 
This variable specifies the directory where Ivy will **cache downloaded artifacts**. 
The cache is used to **store copies of artifacts** that Ivy has downloaded from a remote repository, so they don't need to be re-downloaded every time they are needed.

