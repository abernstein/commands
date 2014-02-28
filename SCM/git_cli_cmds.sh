# Review the Log
git log --stat -3
git log --pretty=oneline <COMMIT1>..<COMMIT2>
git log --oneline --name-status <COMMIT>..<COMMIT>~8

git log -S[search term]

# GIT Lost Commits
git log -g
git branch lost_data [SHA1]
git merge lost_data

git fsck --full

# List Git Config Values
git-config -l

# Clone bare empty project
git clone --bare <REPO>

# Clone a specific remote branch
git init  
git remote add -t BRANCH_NAME_HERE -f origin REMOTE_REPO_URL_PATH_HERE  
git checkout BRANCH_NAME_HERE

# Crush Last Three Commits
git reset --soft HEAD~3; git commit

# Return the location that HEAD is pointing to
git symbolic-ref HEAD

# Create a git alias
git config --global alias.<NAME> "<CODE>"

# Autocorrect GIT Commands
git config --global help.autocorrect 1

# Turn off SSL Verification (SHOULD ONLY BE USED WHEN NEEDED AND REVERTED)
git config --global http.sslVerify false

# Create an archive of a remote branch
git archive --format=tar.gz --remote=ssh://<REPO> <TAG OR BRANCH> > <FILENAME>.tgz
git archive --format=tar.gz --remote=git@<REPO> <TAG OR BRANCH> -o <FILENAME>.tgz

# Export changes done in last commit
git archive -o ../updated.zip HEAD $(git diff --name-only HEAD^)

# Export changed files between two commits
git archive -o ../latest.zip NEW_COMMIT_ID_HERE $(git diff --name-only OLD_COMMIT_ID_HERE NEW_COMMIT_ID_HERE)

# Create a new tag
git tag -a <SEM_VER> -m "<MESSAGE>"

# Push Tags Only
git push --tags

# Nuke a remote branch
git push <REMOTE NAME> :<BRANCH NAME>

# Push branch with a different name to remote
git push <REMOTE NAME> <LOCAL NAME>:<REMOTE NAME>

# Change the Remote Repo URL
git remote set-url origin <new url>

# Nuke a local/remote tag
git tag -d <TAG NAME>
git push origin :refs/tags/<TAG NAME>

# List all branches
git branch -av

# Show merged branches
git branch --merged 

# Delete Branches
git branch -D <BRANCH1> <BRANCH2>

# Rename Branches
git branch -m <OLD NAME> <NEW NAME>

# Nuke a local tracking branch
git branch -rd <REMOTE NAME>/<BRANCH NAME>

# Determine the difference between two branches
git diff --name-status <COMMIT1>..<COMMIT2>

# If not specificied the second commit defaults to HEAD
git diff --name-status <COMMIT>.. 

# Three dots indicates to only look at the only view the changes on the branch containing and up to the second, starting at a common ancestor of both
git diff --name-status <COMMIT>... 

# Create a new DETACHED HEAD branch
git checkout -b <NAME>

# List all remotes
git remote -v

# Show Report on a Particular Remote and it's Branches
git remote show origin

# Dry run on a pruning cycle of remote named origin
git remote prune -n origin

# Remove stale branches from remote
git remote prune <REMOTE NAME>

# Remove the remote named
git remote rm <REMOTE NAME>

# Undo Changes
git checkout -- <FILE/FOLDER>

# HARD Undo
git reset --hard HEAD

# Show report on a particular branch
git show-branch <BRANCH1> <BRANCH2>

# Apply patches using the auto-merge tool
git am

# Apply patch from Unrelated local repository
git --git-dir=PATH_TO_OTHER_REPOSITORY_HERE/.git format-patch -k -1 --stdout COMMIT_HASH_ID_HERE| git am -3 -k


# Review the contents of a commit
git cat-file commit HEAD
git cat-file commit <COMMIT>..<COMMIT>~8

#
git ls-tree <COMMIT>

# Show the help reference for particular command
git help config

# Rebase (merge) master to current branch
git rebase master
git rebase --continue or --skip or --abort

git rebase [-i] --no-ff <COMMIT>

# Add a specific set of folders/files
git add tests/{application,library}/*

git revert -m 1 <COMMIT>

git cherry-pick <COMMIT1>...<COMMIT2>
git cherry-pick <COMMIT1>..<COMMIT2>
git cherry-pick --abort

# Check if your Branch changes are part of Other branch
git cherry -v OTHER_BRANCH_NAME_HERE
#For example: to check with master branch
git cherry -v master

# Start a new Branch with No History
git checkout --orphan NEW_BRANCH_NAME_HERE

# Checkout File from Other Branch without Switching Branches
git checkout BRANCH_NAME_HERE -- PATH_TO_FILE_IN_BRANCH_HERE

# Ignore Changes in a Tracked File
git update-index --assume-unchanged PATH_TO_FILE_HERE

# Check if committed changes are part of a release
git name-rev --name-only COMMIT_HASH_HERE

# Pull with rebase instead of merge
git pull --rebase
git config branch.BRANCH_NAME_HERE.rebase true

# cleanup
git gc --prune=now

# Creates and checks out a new branch name
git branch <BRANCH NAME> <STASH>

# Recovering stashes that were cleared/dropped erroneously
git fsck --unreachable | grep commit | cut -d\  -f3 | xargs git log --merges --no-walk --grep=WIP
