# Getting Started

This chapter will provide guidance on how to get started. First, we will install and integrate Git. Afterwards, we will add GitHub-Access to RStudio. Lastly, we will clone the repository, add a features in a feature branch, and create a pull-request for merging our features with the master branch. This may sound complicated, but it really isn't.

## Installing Git

1. [download](https://git-scm.com/downloads) and install Git.
2. Open RStudio
3. Go to `Tools -> Global Options -> Git/SVN`
4. Enter the path to the `git.exe`

## Integrating Git with RStudio

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

## Accessing the remote via RStudio

1. Open RStudio
2. Go to `File -> New Project -> Version Control`
3. Select `Git`
4. Under `project URL`, enter `github.com/lmuenter/moody.git`
5. Click `create project`

## Working on the repo

Now, we can start working on the actual repository. We will create the markdown-document "hello_world.md" in the directory "dev/examples".

Our main goal in using Git is to prevent conflicts. Therefore, we will not immediately add to the main repository (`master branch`). Instead, we will branch-off the repository, edit the branch, and ask others if they want our changes to be canon (`pull request`).

