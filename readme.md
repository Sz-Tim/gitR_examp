# Git intro  
### Allen Lab meeting  
### 2017 Aug 1  
### Readme  



# Getting started  
### Installing git  
Make sure that git is installed on your computer. It is freely available from 
https://git-scm.com/downloads. Once it is installed, you're ready to use git
locally to track your files. There are several websites that allow you to store
your projects for free on their servers (e.g., Github or Bitbucket). These are
great for collaboration, for keeping a remote backup of your work, and for some
additional functionality, but you can still use git locally on your computer 
without using these services.

### RStudio  
Once git is installed, open the **Global Options** from the Tools menu. Click
the **Git/SVN** tab, then check *Enable version control interface for RStudio 
projects**. You'll need to restart RStudio for the changes to take effect. 




# Tutorials  
There are great, detailed tutorials online for using git through RStudio. Rather 
than repeat them, I'll link them:  

http://r-bio.github.io/intro-git-rstudio
https://tinyurl.com/RStudio-Github
https://tinyurl.com/RStudio-Git

Note that there are a few global settings for git that should be configured 
through the command line. This can be through Terminal on a Mac/Linux or the 
equivalent on Windows. If you aren't sure how to do this, you can also open up
a bash shell through RStudio once it's configured for version control. On the
Git tab (in the Environment/History/Git pane), click *More > Shell...*. Then
add your name and email address as recommended in the tutorials by running:

git config --global user.name "Your Name Here"
git config --global user.email "your_email@example.com"