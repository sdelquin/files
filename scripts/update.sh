curl --silent -O https://cdn.jsdelivr.net/npm/files.photo.gallery/index.php

VERSION=$(cat index.php | sed -n "s/.*static \$version = '\(.*\)';/\1/p")
echo 'Installed version:' $VERSION
