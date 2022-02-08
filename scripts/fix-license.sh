FILE=_files/config/config.php

sed -i '' "s/'license_key' => .*,/'license_key' => getenv('LICENSE_KEY'),/g" $FILE
# add newline to the end of the file
if [ "$(tail -c1 "$FILE"; echo x)" != $'\nx' ]; then
    echo "" >>"$FILE"
fi
