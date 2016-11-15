#!/bin/sh

# this script is for correct file permission when checkout and git pull/merge
# step 1: create .git/hooks/post-checkout and .git/hooks/post-merge (for git pull also)
# step 2: chmod ug+x .git/hooks/post-checkout .git/hooks/post-merge
## content sample
## #!/bin/sh
## sh ~/.ssh/fixPermission.sh

chmod 600 ~/.ssh/config
