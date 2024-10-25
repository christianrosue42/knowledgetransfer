# SSL
### check for existing key pair
Go to your home directory.
Go to the .ssh/ subdirectory.

### Generate SSH key pair
For example, for [ED25519](https://medium.com/@sahil-awasthi/all-about-ed25519-edffd38a4874#:~:text=2%20min%20read,digital%20signature%20generation%20and%20verification.):


## GitLab / GitHub
Paste the text below, replacing the email used in the example with your GitHub email address.

```ssh-keygen -t ed25519 -C "your_email@example.com"```
ssh-keygen -t ed25519 -C "christian.rosue@eisr.de"

Your identification has been saved in C:\Users\christian.rosue/.ssh/id_ed25519

Your public key has been saved in C:\Users\christian.rosue/.ssh/id_ed25519.pub

- store the contents of the public key file (.pub) in gitHub / gitLab 

### add key to ssh agent 
#### Start the SSH agent:
##### powershell

```Start-Service ssh-agent```

##### linux
```eval "$(ssh-agent -s)"```

#### Add your private key to the SSH agent:

```ssh-add C:\path\to\your\private\key```

Replace C:\path\to\your\private\key with the actual path to your private key file (e.g., C:\Users\YourUsername\.ssh\id_rsa).

### GitHub SSH-Verbindung testen:

```ssh -T git@github.com```

### Berechtigungen: 
#### Überprüfe die Berechtigungen deiner SSH-Schlüssel-Dateien:
##### Private key file (~/.ssh/bananaprivate)

```chmod 600 <abosulte-path>/.ssh/privategithub```

##### Public key file (~/.ssh/bananaprivate.pub):

```chmod 644 ~/.ssh/privategithub.pub```

### SSH-URL für dein Repository verwenden:

```git remote set-url origin git@github.com:christianrosue42/knowledgetransfer.git```

chmod 644 /mnt/c/Users/christian.rosue/.ssh/privategithub.pub
