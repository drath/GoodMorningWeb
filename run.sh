#! /bin/bash
# script to turn the screen blue
git add .
git commit -a -m "$1"
git push
cap production deploy
