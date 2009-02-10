
# This is to help with the Scite F5 command.  On Windows puts nor print (as
# expected) send anything to the output window w/o a flush.  Because the person
# learning should not have to worry about this sort of thing from the start we
# are taking advantage of reopening the class to flush for puts and print.
#
# Use in Scite by editing ruby.properties and changing command.go to have -r scite_helper after ruby

module Kernel
  alias :origputs :puts
  alias :origprint :print
  def puts *args
    origputs *args
    STDOUT.flush
  end
  def print *args
    origprint *args
    STDout.flush
  end
end
