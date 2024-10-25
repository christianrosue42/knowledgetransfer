### naviagte to c: drive on windows system

```cd /mnt/c/```

### check file permissions
```dir -lr```

### zip files
#### install unzip (if not already installed)

```sudo apt-get install unzip```

#### extract to a particular destination folder

```unzip file.zip -d destination_folder```
unzip RREEFGermany-develop.zip -d C:\DEV\Projects\kyndryl
##### same name as the zip in your current working directory

```unzip file.zip```

### search for a file
#### powershell
(Recurse option is used to search in all subdirectories)

```Get-ChildItem -Path "C:\path\to\directory" -Filter "filename.ext" -Recurse```
Get-ChildItem -Path "C:\DEV\Projects\kyndryl" -Filter "run.bat" -Recurse

##### forward search output to a file
(in this case: filter the folder for .jar files and store them in a markdown file)

```Get-ChildItem -Path "C:\DEV\Projects\kyndryl" -Filter "*.jar" -Recurse | Out-File -FilePath "kyryl_dependencies.md```
