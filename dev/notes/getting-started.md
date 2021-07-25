# Getting Started

This chapter will provide guidance on how to get started. First, we will install and integrate Git. Afterwards, we will add GitHub-Access to RStudio. Lastly, we will clone the repository, add a features in a feature branch, and create a pull-request for merging our features with the master branch. This may sound complicated, but it really isn't.

## 1. Installing Git

1. [download](https://git-scm.com/downloads) and install Git.
2. Open RStudio
3. Go to `Tools -> Global Options -> Git/SVN`
4. Enter the path to the `git.exe`
5. close RStudio

## 2. Integrating GitHub with RStudio

For this, we need to generate a Personal Access Token on GitHub, and add it to the R environment.

``` R
# install.packages(usethis)
library(usethis)

# your details
use_git_config(
  user.name = "your.username", 
  user.email = "your@email.com"
)

# get a PAT
create_github_token()

# store PAT in .Renviron
edit_r_environ()

## .Renviron will be opended.
## Manually enter in .Renviron:
## GITHUB_PAT=xxxyyyzzz
## end the file with a newline!
## save and close .Renviron
```

## 3. Accessing the remote via RStudio

1. Open RStudio
2. Go to `File -> New Project -> Version Control`
3. Select `Git`
4. Under `project URL`, enter `github.com/lmuenter/moody.git`
5. Under `Create project as subdirectory of:`, choose an appropriate location.
6. Click `create project`

## 4. Working on the repo
Our main goal in using Git is to prevent conflicts. It also makes collaboration more democratic. Hence, will not immediately add to the main repository (`master branch`). Instead, we will branch-off the repository, edit the new `feature branch`, and use a `pull request` to ask others if our changes should be added to `master`.

Now, we can start working on the actual repository. We will create the markdown-document "hello_world.md" in the directory "dev/examples".

### 4.1 Create a feature branch

1. Open the project `moody.Rproj` by double-clicking. You can find this R-project in the directory you selected in `3.5`
2. RStudio will open. Now you can start working.
3. Look at your navgation panel. You will find a new tab `Git` next to `Environment`, `History` and `Files`.

![](../figs/RStudio-git-panel)

4. Make a new branch called `example`. Now you are not in `master` anymore!

### 4.1 creating a new file

1. Make a new markdown-document. Click on `File -> new file -> Markdown File`
2. Edit the Markdown file like so:
```
## Hello World
Hello World

```
3. Save the file (`ctrl + s`). The file explorer will open
4. In the explorer, go to "dev/" and create a new subdirectory "examples"

## 4.2 Adding the new file to our feature branch
