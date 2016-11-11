# coding: utf8
import os
import sys
import subprocess
import numpy as np

# Import openCV
sys.path.append('/usr/local/lib/python2.7/dist-packages')
import cv2

# Import Caffe, pyCaffe
HOME        = os.environ['HOME']
CAFFE_PATH  = HOME + '/caffe'
sys.path.insert(0, CAFFE_PATH +'/python')
import caffe

def loadImage(imagePath):
    imageName = cv2.imread(imagePath);
    imageName = cv2.cvtColor(imageName , cv2.COLOR_BGR2GRAY);
    return imageName;

def saveImage(imagePath,image):
    cv2.imwrite(image,imagePath);

def showImage(image):
    title = str(image)
    cv2.imshow(title, image)
    cv2.waitKey(0)

def padImage(image,p):
    pad_image = cv2.copyMakeBorder(image,p,p,p,p,cv2.BORDER_REPLICATE)
    return pad_image

def extractPatch(image,x,y,l0=30,tmpName='./tmpPatch.png'):
    patch = image[x:x+l0 , y:y+l0];
    cv2.imwrite(tmpName,patch);
    return tmpName;

def caffeForward(imagePath,net,layerName='fc'):
    caffe_image = caffe.io.load_image(imagePath)
    net.blobs['data'].data[...]=caffe_image[:,:,0]
    net.forward()
    return net.blobs[layerName].data[0][0]

def normalizeCaffe(value,scale_factor=127):
    return np.array(scale_factor + scale_factor * value,dtype=int);

# ---------------------------------------------------------------

samplePath = './sample.png'
hwfcPath   = './fc0.png'
stride = 4;
i  = 0;
j  = 0;
l0 = 30;
# Load image to test
sample  = loadImage(samplePath);

# Pad the imput
sample = padImage(sample,3)

#Load HW fcMap
hwfcMap =  loadImage(hwfcPath)


#  Load CNN
model   = '../../caffe/network/deploy.prototxt'
kernels = '../../caffe/network/network.caffemodel'
net = caffe.Net(model,kernels,caffe.TEST)

swfcMap = np.zeros(hwfcMap.shape).astype("uint8")

for x in xrange(0,sample.shape[0],stride):
    for y in xrange (0,sample.shape[1],stride):
        print (x,y)
        patchName = extractPatch(sample,x,y,l0)
        fcValue = caffeForward(patchName,net)
        swfcMap[i,j] = normalizeCaffe(fcValue);
        i = i + 1;
        j = j + 1;

saveImage(swfcMap,'./test.png');

# hw = cv2.imread("")
# hw = cv2.cvtColor(hw , cv2.COLOR_BGR2GRAY);
#
# pixelOfInterest = 28;
# print hw[pixelOfInterest,pixelOfInterest]
