VERB=$1

LOCATION=\$PERLLIB

echo "alias $VERB\='$LOCATION/$VERB'"

# this part was too clever .... try later to get it to work
# aim was to "do" the alias to let you test it
echo $COMMAND
#$COMMAND