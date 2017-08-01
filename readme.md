# Git intro  
*Allen Lab meeting*  
*2017 Aug 1*  
*Readme*  

## Practice: Staging, committing, pushing, & pulling  
Everyone add something to the line with their name on it:  

Ceara:Hello World

Jenica:  Go, darn it.

Mitch: sample text  

Tim: sample text  


## Getting started  
### Installing git  
Make sure that git is installed on your computer. 
It is freely available from https://git-scm.com/downloads. 
Once it is installed, you're ready to use git locally to track your files.  

There are several websites that allow you to store your projects for free on their servers (e.g., GitHub or BitBucket). 
These are great for collaboration, for keeping a remote backup of your work, and for some additional functionality, but you can still use git locally on your computer without using these services.  

### RStudio  
Once git is installed, open the **Global Options** from the Tools menu. 
Click the **Git/SVN** tab, then check *Enable version control interface for RStudio projects*. 
You'll need to restart RStudio for the changes to take effect. 



## Lab exercise
1. Install git
2. Create Github account
3. Set up RStudio
	1. Open new project
	2. Tool > Global Options > Git/SVN
	3. Check box to enable version control
	4. Restart RStudio
	5. Git tab > More > Shell..
```
git config --global user.name "Your Name Here"  
git config --global user.email "your_email@example.com"  
```
4. Two ways to start a new project w/RStudio + Github  
	1. Start through RStudio  
		a. New Project > New Directory > Empty Project  
			+ check *Create a git repository*  
		b. Open GitHub in browser  
			+ create repo with same name as project  
			+ DO NOT initialize with a readme  
			+ copy code to *Push an existing repository from the command line*  
		c. Back in RStudio  
			+ open shell, paste code  
			+ push commits  
	2. Start through GitHub  
		a. Open GitHub in browser  
			+ create repo  
			+ initialize with a readme  
			+ copy the repo URL  
		b. Open RStudio  
			+ New Project > Version Control > Git > paste URL  
5. Clone example repo (use option 2)  
	+ Option 1: click *Clone or download* button, download ZIP  
		+ gives you the whole repo, but git behaves oddly  
	+ Option 2: Clone through RStudio  
		1. Copy the repo URL (https://github.com/Sz-Tim/gitR_examp.git)  
		2. Open RStudio  
			+ New Project > Version Control > Git > paste URL  
6. Controlling your versions  
	1. Pull  
	2. Change a file  
	3. Save it and stage the version  
	4. Commit + message  
	5. Push  
	6. Pull  
7. .gitignore  
	+ list files you don't want to track, but have in your project folder    
8. Github features -- controlling editing, collaborators  




## Tutorials  
There are great, detailed tutorials online for using git through RStudio. 
Rather than repeat them, I'll link them:  

+ http://r-bio.github.io/intro-git-rstudio  
+ https://tinyurl.com/RStudio-Github  
+ https://tinyurl.com/RStudio-Git  

Note that there are a few global settings for git that should be configured through the command line. 
This can be through Terminal on a Mac/Linux or the equivalent on Windows. 
If you aren't sure how to do this, you can also open up a bash shell through RStudio once it's configured for version control. 
To do that, find the Git tab (in the Environment/History/Git pane) and click *More > Shell*. 
Then add your name and email address as recommended in the tutorials by running:

```
git config --global user.name "Your Name Here"  
git config --global user.email "your_email@example.com"  
```

### Merge conflicts  
This is an example of a merge conflict. If two people are working on the same file (or you're on two computers) and both commit their changes and try to push to the repository, git will do its best to merge the files. 
If the changes made were to different lines and there are no conflicts, it will merge automatically. 
If there are edits to the same line(s), git will issue a warning and mark the conflicting lines so you can decide how to merge them appropriately.  
  
<<<<<<< HEAD
This is what a merge conflict looks like:  
  
line of code from computer B  
=======
This is what a merge conflict looks like: 
  
line of code from computer A
>>>>>>> 6bfad14a0c08d8e975fdeeaa2d8fcd597be5a2f3
