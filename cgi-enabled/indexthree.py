#!/usr/bin/env python

import cgi

# print header
print "Content-type: text/html\n\n"

print "<h2>Arguments</h2>"

form = cgi.FieldStorage()
arg1 = form.getvalue('os')
print "OS: " +arg1+"<br>"

arg2 = form.getvalue('cpu')
print "CPU: "+arg2+"<br>"

arg3 = form.getvalue('server')
print "Server: "+arg3+"<br>"
