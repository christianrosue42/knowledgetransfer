## rename your Git master branch to main
Navigate to your repository in the command line and issue the following commands:

```git branch -m master main```

```git push -u origin main ```

## clone a certain branch

git clone --branch <branch_name> <repository_url>

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

## To check your Git SSL configuration, you can run:

```git config --global --get http.sslBackend```

## change git remote url
```git remote set-url origin https://<AccessToken>@isrdevtools02.isr.local/<namespcace>/<RepoName>.git```


## Learning: oauth in url !
https://dev.to/fpeluso/how-to-clone-a-gitlab-repository-after-enabling-2fa-6oc

``` git clone https://oauth:<AccessToken>@isrdevtools02.isr.local/<namespcace>/<RepoName>.git```

git clone https://<AccessToken>@isrdevtools02.isr.local/<namespcace>/<RepoName>.git

### Delete commit (Attention)
Careful: 
git reset --hard 
WILL DELETE YOUR WORKING DIRECTORY CHANGES. Be sure to stash any local changes you want to keep before running this command.

Assuming you are sitting on that commit, then this command will wack it...

``` git reset --hard HEAD~1 ```
The HEAD~1 means the commit before head.

Or, you could look at the output of git log, find the commit id of the commit you want to back up to, and then do this:

```git reset --hard <sha1-commit-id>```
If you already pushed it, you will need to do a force push to get rid of it...

```git push origin HEAD --force```
