import sys, time

sys.stdout.write('Content-Type: text/html;charset=utf-8\r\n\r\n')
print '<html><body>'
for i in range(10):
    print '<div>%i</div>'%i
    sys.stdout.flush()
    time.sleep(1)
