## Set User Env Windows
<img src="image-3.png" alt="banana logo" width="600"/>


## Set Environment Variables for certain java version (project based)
(powershell) Bsp: JDK 8
```$env:JAVA_HOME = "C:\Program Files\Java\jdk-1.8\"```

#### JDK 11
$env:JAVA_HOME = "C:\DEV\Tools\Java\jdk-11.0.2"

#### JDK 17
$env:JAVA_HOME = "C:\Program Files\Java\jdk-17"

### Verify that the environment variable is set correctly by running:
(powershell)
```echo $env:JAVA_HOME```

![alt text](image-4.png)