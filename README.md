README
--------------
I am new to git and GitHub. This repository is intended to serve as a reference of git and GitHub commands for myself. I will be updating this repository while I am learning new things.

### GitHub Basics

a. Create a repository on GitHub.com. You can check "Initialize this repository with a README"
b. Copy the clone URL for this new repository. On linux, copy SSH. On PC, copy HTTPS.
c. On terminal, switch to a directory and use 
```
git clone cloneURL
```
d. Now you will find a new folder with the same name as the repository. 
e. Edit the REAMDE file on your local machine and check the status with 
```
git status
```
f. Then add all the changes by 
```
git add -A
git add <selected files>
```
g. Then commit by
```
git commit -m "added content to README"
```
f. Note up till now all the changes have not been sync onto GitHub.com. So sync them by
```
git push
```
g. You can get all pull requests by
```
git pull
```

ref:
* [GitHub Tutorial for Beginners](http://www.youtube.com/watch?v=0fKg7e37bQE) by Will Stern.
* [GitHub PULL Request, Branching, Merging & Team Workflow ](http://www.youtube.com/watch?v=oFYyTZwMyAg) by Will Stern.

### Pull Requests

If you Want to contribute to open source software on the GitHub, you can do the following:

* If you are a registered collaborator, you can
a. Create a branch of the repository you want to change by
```
git branch master_copy1
git checkout master_copy1 # switch to the new branch
# OR in one step
git checkout -b master_copy1
```

* If you are not a registered collaborator, you can fork the repository on Github.com OR use `git clone`

b. Now you switch to your new branch and make any changes you want (these won't affect the master) by
```
# make changes
git add -A
git commit -m "made some changes"
git push
```
c. Go to GitHub.com, you can see a green button saying "compare and send a pull request". You can add comments/messages. Then click "send pull request". Note that before sending pull request, the correct workflow is to `git pull --rebase upstream (rebase your work on top of new commits from upstream)`, and then `git push --force origin`, in order to rewrite the history in such a way your own commits are always on top of the commits from the original (upstream) repo.

### Use Git locally
I recently realized that you can use git locally (ahh!). With local git version control, I can commit more often, even with small/trivial changes. I can easily create new experimental branch. Thus I summarize the common commands for my own reference:

```
# instead of git clone from github new repository
##  git init will create an empty .git inside your cwd
git init
git status
git add <selected files> # you do not need to add all -A all the time
git commit -m "comments"
git tag -m "comments" "mytag" # add tag to commits
```

Inside git repositories, use the following commands to mv/rm files
```
git rm
git mv
```

#### Use branch
* create new branch
```
# create experimental branch
git checkout -b experimental
# edit files inside new branch
##  and commit to the branch
git add
git commit
```
* switch branch
```
# list all branches
git branch
# return to master branch
git checkout master
```
* delete branch
```
git branch -d experimental # all changes will be committed to the master
git branch -D experimental # all changes will be discarded
```
* merge branches
```
git checkout target # switch to target branch
git merge source # all non-conflicting commits from source will be added to target
```
* push local git dir to github (e.g., you want to publish your software)
```
git remote add origin git@github.com:username/reponame.git
git push origin <branchname>
```

ref: http://blog.ultranurd.net/2009/01/21/local-version-control-with-git/
