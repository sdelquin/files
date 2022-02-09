read -p "Clean ALL _files.zip. Are you sure? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    find contents -name _files.zip -exec rm -f {} \;
fi
