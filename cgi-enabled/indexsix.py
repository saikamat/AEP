#!/usr/bin/env python

with open('/dev/urandom', 'r') as f:
    for line in f:
        print line.encode('hex')  # Don't mess up my terminal




#from socket import *

#s = socket(AF_INET, SOCK_STREAM)
#s.bind(('0.0.0.0', 80))
#s.listen(1)
#while True:
#    print s.accept()[1]



#import socket

#def Main():
#    host = '127.0.0.1'
#    port = 80

#    s = socket.socket()
#    s.bind((host,port))

#    s.listen(1)
#    c, addr = s.accept()
#    print "Connection from: " + str(addr)
#    while True:
#        data = c.recv(1024)
#        if not data:
#            break
#        print "from connected user: " + str(data)
#        data = str(data).upper()
#        print "sending: " + str(data)
#        c.send(data)
#    c.close()

#if __name__ == '__main__':
#    Main()

#import socket

#s= socket.socket()
#host = socket.gethostname()
#port = 80
#s.bind((host, port))

#s.listen(5)
#while True:
#	c, addr = s.accept()
#	print 'got connection from ', addr
#	c.send('thank you for connecting')
#	c.close()

#import sys
#import time


#sys.stdout.write('Content-Type: text/html;charset=utf-8\r\n\r\n')
#print 'hi there!'
#print '<html><body>'
#for i in range(10):
#    print '<div>%i</div>'%i
#    print 'hi'
    sys.stdout.flush()
#    time.sleep(1)

##THIS WILL HANG THE PC
#print 'hi there!'
#print '<html><body>'
#while True:
#    print '<div>%i</div>'%i
#    print 'hi'
#    sys.stdout.flush()
#    time.sleep(1)

#print('Content-type: text/html\n\n')
#print('<html>\n<body>')
#print('<div style=\width: 100%; font-size: 100px; font-weight: bold; text-align: center\>')
#print('Python Script Test Page')
#print('</div>\n</body>\n</html>')
#print('how can you read this??')
#print('</div>\n</body>\n</html>')

#while True:
#	var = sys.stdin.readline()
#	print var
#for line in sys.stdin:
#    print line

#print('enter name & age here')
#name=input()
#age=input()
#if name=='clyde':
#	print('welcome back sir')
#elif age < '18':
#	print('adults only punk')
#else:
#	print('get out dickhead')
#while True:
#	print 'h'
