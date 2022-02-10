#!/bin/bash

VERSION=$(cat index.php | sed -n "s/.*static \$version = '\(.*\)';/\1/p")
echo 'Files app --version:' $VERSION
