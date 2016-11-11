# coding: utf8
import os
import sys
import numpy as np
import matplotlib.pyplot as plt

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
    plt.imshow(title, image)
    plt.show()

def padImage(image,p):
    pad_image = cv2.copyMakeBorder(image,p,p,p,p,cv2.BORDER_REPLICATE)
    return pad_image

def extractPatch(image,x,y,patchSize=30,tmpName='./tmpPatch.png'):
    patch = image[x:x+patchSize , y:y+patchSize];
    cv2.imwrite(tmpName,patch);
    return tmpName;

def caffeForward(imagePath,net,neuron,layerName='fc'):
    caffe_image = caffe.io.load_image(imagePath)
    net.blobs['data'].data[...]=caffe_image[:,:,0]
    net.forward()
    return net.blobs[layerName].data[0][neuron]

def normalizeCaffe(value,scale_factor=127):
    return np.array(scale_factor + scale_factor * value,dtype=int);

def genFCmap(sample,stride,padding,patchSize,neuron):
    targetShape = (((sample.shape[0] - patchSize + 2*padding)/stride) +1 ,
                   ((sample.shape[1] - patchSize + 2*padding)/stride + 1))
    swfcMap = np.zeros(targetShape).astype("uint8")
    i = 0;
    j = 0;
    # Pad the imput
    sample = padImage(sample,padding)
    for y in xrange(0,sample.shape[0],stride):
        if (y + patchSize > sample.shape[0]):
            # print ("Ignored Y border pixel %d %d" %(x,y))
            j = 0;
        else:
            for x in xrange (0,sample.shape[1],stride):
                if (x + patchSize > sample.shape[0]):
                    # print ("Ignored X border pixel %d %d" %(x,y))
                    i = 0;
                else:
                    # print (x,y)
                    patchName = extractPatch(sample,x,y,patchSize)
                    fcValue = caffeForward(patchName,net,neuron,'fc')
                    swfcMap[i,j] = normalizeCaffe(fcValue);
                    i = i + 1;
            j = j + 1;
    resultName = './swFc' + str(neuron) + '.png'
    saveImage(swfcMap,resultName);
# ---------------------------------------------------------------

samplePath = './sample.png'
hwfcPath   = './fc0.png'
stride    = 4;
patchSize = 30;
padding   = 1;

# Load image to test
sample  = loadImage(samplePath);





#  Load CNN
model   = '../../caffe/network/deployFC.prototxt'
kernels = '../../caffe/network/network.caffemodel'
net = caffe.Net(model,kernels,caffe.TEST)

#Generate FC MAP
for neuron in range(net.blobs['fc'].data.shape[1]):
    genFCmap(sample,stride,padding,patchSize,neuron)

# hw = cv2.imread("")
# hw = cv2.cvtColor(hw , cv2.COLOR_BGR2GRAY);
#
# pixelOfInterest = 28;
# print hw[pixelOfInterest,pixelOfInterest]
