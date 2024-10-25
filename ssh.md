## SSH-Verbindung testen:

```ssh -T git@github.com```

## Berechtigungen: 
#### Überprüfe die Berechtigungen deiner SSH-Schlüssel-Dateien:
##### Private key file (~/.ssh/bananaprivate)
```chmod 600 <abosulte-path>/.ssh/privategithub```
##### Public key file (~/.ssh/bananaprivate.pub):
```chmod 644 ~/.ssh/privategithub.pub```

## SSH-URL für dein Repository verwenden:

```git remote set-url origin git@github.com:christianrosue42/knowledgetransfer.git```
chmod 644 /mnt/c/Users/christian.rosue/.ssh/privategithub.pub