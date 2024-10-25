## rename your Git master branch to main
Navigate to your repository in the command line and issue the following commands:

```git branch -m master main```

```git push -u origin main ```

## Config
### check config
```git config --list```

### add the origin remote for your current repository
```git remote add origin git@github.com:christianrosue42/knowledgetransfer.git```

### global config (username, email)
```git config --global user.email "you@example.com"```

```git config --global user.name "Your Name"```

### local config (usernmae, email)
(hidden) .git/ folder 
```git config user.name "christian.rosue@googlemail.com"```

## merge refused
**use with caution!**:

```git pull origin branchname --allow-unrelated-histories```

## check remote repos

```git remote -v```

