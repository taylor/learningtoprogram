
# This is to help with the Scite F5 command.  On Windows puts nor print (as
# expected) send anything to the output window w/o a flush.  The person
# learning should not have to worry about this sort of thing from the start.
#
# Use in Scite by editing ruby.properties and changing command.go to have -r scite_helper after ruby

STDOUT.sync = true
