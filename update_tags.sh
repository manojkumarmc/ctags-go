# Update the following snippet to ~/.ctags
# --langdef=Go
# --langmap=Go:.go
# --regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/d,func/
# --regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/d,var/
# --regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/d,type/

rm -rf ./tags
echo "tag file removed"
ctags -f tags --exclude="*test*" --exclude="*.js" \
  -R $GOPATH/src/github.ibm.com/MCMP-Development \
  -R $GOPATH/src/github.ibm.com/MCMP-Discovery
echo "tag file updated"

# update vimrc with the path
# set tags=/home/user/tags
