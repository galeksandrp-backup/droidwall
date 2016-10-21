#!/usr/bin/env bash
echo $DEPLOY_FILES | xargs -n1 -i echo curl -H "Authorization: token " -H "Content-Type: $(file -b --mime-type {})" --data-binary @{} "https://uploads.github.com/repos/$TRAVIS_REPO_SLUG/releases/4192505/assets?name={}"
