#!/bin/bash
tot=19
cur=`ls -l | grep -c ^d`
adv=$((($cur*100)/$tot))
perl -pi -e "s/([0-9]+)(\?title=Progress)/$adv\2/g" README.md
git add README.md

# https://progress-bar.dev/11?title=Progress