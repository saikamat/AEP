#!/usr/bin/env python
import sys
import time


sys.stdout.write('Content-Type: text/html;charset=utf-8\r\n\r\n')

print '<html><body>'
for i in range(10):
    print '<div>%i</div>'%i
    sys.stdout.flush()
    time.sleep(1)
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
