#!/usr/bin/python
import cv2
import numpy as np
from PIL import Image
img=cv2.imread('/home/ubuntu-admin/horse.png')
gray=cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
gray=cv2.threshold(gray, 127, 255, cv2.THRESH_BINARY)[1]
np.savetxt('/home/ubuntu-admin/test',gray,fmt='%d')
mat=np.loadtxt('/home/ubuntu-admin/test',dtype=int)
mat=np.uint8(mat)
c=(gray==mat)
print c
print gray[0][0].dtype
print mat[0][0].dtype
# file_sample = open('/home/ubuntu-admin/test')
#mat =[255,255,0,0,0,255,255,0,0,0,255,255,0,0,0,255,255,0,0,0,255,255,0,0,0,255,255,0,0,0]
# mat=[];
# for i in range(100):
#     s=str(file_sample.readlines())
#     s=s.split(" ")
#     mat.append(s)
#     #mat = np.random.random((100,100))
# with open('/home/ubuntu-admin/test') as file:
#     mat= [[float(digit) for digit in line.split()] for line in file]
# Creates PIL image
# mat=np.asarray(mat)
# print mat.size
# mat=np.reshape(mat,(100,100))
img = Image.fromarray(mat,'L')
img.show()
