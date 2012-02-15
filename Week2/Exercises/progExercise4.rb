#
#a. Imagine for a moment, that you want to be able to set a variable, but if it’s not set, you default to a known value. You’d rather do it on a single line.
#
#puts expand = defined?( expand ) ? expand : true
#
#Why is the output nil ?
#
#nil and false behave the same way in conditionals. Also, and this is where it gets tricky, expand is in fact defined here. Let me show you something in IRB, maybe this will get you on the right track:
#
#>> defined? foo #=> nil
#>> foo = defined? foo #=> "local-variable"
#
#
