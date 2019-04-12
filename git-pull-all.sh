#!/usr/bin/env bash
true > bookname.data
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; git worktree add "${remote#origin/}" "$remote"; echo "${remote#origin/}" >> bookname.data; cp -R ./${remote#origin/}/.gitbook ./${remote#origin/}/gitbook; done
# git fetch --all
# git pull --all
