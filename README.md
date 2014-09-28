README
--------------
I am a GitHub beginner. This repository is intended to serve as a reference of GitHub commands for myself. The commands I organized here were learned from two Youtube videos:
* [GitHub Tutorial for Beginners](http://www.youtube.com/watch?v=0fKg7e37bQE) by Will Stern.
* [GitHub PULL Request, Branching, Merging & Team Workflow ](http://www.youtube.com/watch?v=oFYyTZwMyAg) by Will Stern.

### GitHub Basics

a. Create a repository on GitHub.com. You can check "Initialize this repository with a README"
b. Copy the clone URL for this new repository.
c. On terminal, switch to the a directory and use 
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
```
g. Then commit by
```
git commit -m "added content to README"
```
f. Note up till now all the changes have not been sinked onto GitHub.com. So sink them by
```
git push
```
g. You can get all pull requests by
```
git pull
```

### GitHub Pull Requests

If you Want to contribute to another people's pull request, you can do the following:

a. Create a branch of the repository you want to change by
```
git branch master_copy1
```
This will make a complete copy of master. Or if master belongs to another person, you can fork this repository and make changes and send pull request, too.

b. Now you switch  to your new branch and make any changes you want (these won't affect the master) by
```
git checkout master_copy1
# make changes
git add -A
git commit -m "made some changes"
git push
```
c. Go to GitHub.com, you can see a green button saying "compare and send a pull request". You can add comments/messages. Then click "send pull request".

### Use Git locally
I recently realized that you can use git locally. With local git version control, I can commit more often, even with small/trivial changes. I can easily create new experimental branch. Thus I summarize the common commands for my own reference:

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
git push origin branch name
```

ref: http://blog.ultranurd.net/2009/01/21/local-version-control-with-git/
