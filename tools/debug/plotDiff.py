# coding: utf8
import os
import sys
import subprocess
from skimage.measure import compare_ssim as ssim
import matplotlib.pyplot as plt
import numpy as np
from scipy.misc import imread as sc_imread
sys.path.append('/usr/local/lib/python2.7/dist-packages')
import cv2
HOME        = os.environ['HOME']
CAFFE_PATH  = HOME + '/caffe'
sys.path.insert(0, CAFFE_PATH +'/python')
import caffe

def normalize_image(image,scale_factor=127):
    return np.array(scale_factor + scale_factor * image,dtype=int);

def mse(imageA, imageB):
	err = np.abs(np.sum((imageA.astype("float") - imageB.astype("float")) ** 2))
	err /= float(imageA.shape[0] * imageA.shape[1])
	return err

def psnr(imageA, imageB):
	err = np.sum((imageA.astype("float") - imageB.astype("float")) ** 2)
	err /= float(imageA.shape[0] * imageA.shape[1])
	psnr_value = 20*np.log10(np.max(imageA[...])) - 10*np.log10(err)
	return psnr_value

def compare_images(A, B, title):
    s = np.zeros(A.shape[0])
    fig = plt.figure(title)

    for i in range(A.shape[0]):
		ax = fig.add_subplot(A.shape[0], 2, 2*i+1)
		plt.imshow(A[i], cmap = plt.cm.gray)
		plt.suptitle("Layer : conv1")
		plt.axis("off")
		ax = fig.add_subplot(A.shape[0], 2, 2*i+2)
		plt.imshow(B[i], cmap = plt.cm.gray)
		plt.axis("off")

    plt.show()

######################## MAIN ########################
#  Read network
model   = '../../caffe/network/deploy.prototxt'
kernels = '../../caffe/network/network.caffemodel'
net = caffe.Net(model,kernels,caffe.TEST)

# Read sample in openCV
cv_image      = cv2.imread('./sample.png');
in_data = cv2.cvtColor(cv_image , cv2.COLOR_BGR2GRAY)

# Read sample in caffe
caffe_im = caffe.io.load_image('./sample.png')
net.blobs['data'].data[...]=caffe_im[:,:,0]

# Forward propagation of sample.png
net.forward()

# Read output
conv1  = net.blobs['conv1'].data[0]

# Normalize image in order to be compared later
c0_sw = normalize_image(conv1).astype("uint8")

# layer_size = conv1.shape[0]
layer_size = 3;
c0_hw = np.zeros(conv1.shape).astype("uint8");

# Read hardware results in grayscale
for i in range(layer_size):
    name     = './c0' + str(i) +'.png'
    tmp      = cv2.imread(name)
    tmp      = cv2.cvtColor(tmp, cv2.COLOR_BGR2GRAY)
    c0_hw[i,:,:] = tmp;

for i in range(layer_size):
    compare_images(c0_hw[i],c0_sw[i],"Haddoc2 vs Caffe")
ow()


######################## MAIN ########################
#  Read network
model   = '../../caffe/network/deploy.prototxt'
kernels = '../../caffe/network/network.caffemodel'
net = caffe.Net(model,kernels,caffe.TEST)

# Read sample in openCV
cv_image      = cv2.imread('./sample.png');
in_data = cv2.cvtColor(cv_image , cv2.COLOR_BGR2GRAY)

# Read sample in caffe
caffe_im = caffe.io.load_image('./sample.png')
net.blobs['data'].data[...]=caffe_im[:,:,0]

# Forward propagation of sample.png
net.forward()

# Read output
conv1  = net.blobs['conv1'].data[0]

# Normalize image in order to be compared later
c0_sw = normalize_image(conv1).astype("uint8")

# layer_size = conv1.shape[0]
layer_size = 3;
c0_hw = np.zeros(conv1.shape).astype("uint8");

# Read hardware results in grayscale
for i in range(layer_size):
    name     = './c0' + str(i) +'.png'
    tmp      = cv2.imread(name)
    tmp      = cv2.cvtColor(tmp, cv2.COLOR_BGR2GRAY)
    c0_hw[i,:,:] = tmp;


compare_images(c0_hw,c0_sw,"Haddoc2 vs Caffe")
