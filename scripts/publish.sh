#!/bin/bash

GITLAB_PUBLIC_REPO=/d/Lehre/BSc_Informatik_bverI/hs2023/code/bveri-lectures-hs2023-branch-gh-pages

# Commit gitlab
cd ${GITLAB_PUBLIC_REPO}

git add .

# Commit the changes
echo "Enter the commit message:"
read commit_message
git commit -m "$commit_message"

# Push to remote repository
git push origin gh-pages