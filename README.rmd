README
--------------
I am a GitHub beginner. This repository is intended to serve as a reference of GitHub commands for myself. The commands I organized here were learned from two Youtube videos:
* [GitHub Tutorial for Beginners](http://www.youtube.com/watch?v=0fKg7e37bQE) by Will Stern.
* [GitHub PULL Request, Branching, Merging & Team Workflow ](http://www.youtube.com/watch?v=oFYyTZwMyAg) by Will Stern.

GitHub Basics
==============
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

GitHub Pull Requests
=====================
If you Want to contribute to another people's pull request, you can do
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
