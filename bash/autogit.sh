#checks if all arguments are provided arg1=repository name; arg2=commit message
if [ $# -ne 2 ]; then
    echo 'Usage: $0 <directory name> "commit message"'
    exit 1
fi
cd $1
#stores username and password for bypassing authentication (1hr=3600s)
git config --global credential.helper 'cache --timeout=36000'
git add .
git commit -m $2
git push origin master
