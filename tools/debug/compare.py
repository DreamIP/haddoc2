# coding: utf8
import os
import sys
import subprocess
from skimage.measure import compare_ssim as ssim
import matplotlib.pyplot as plt
import numpy as np
sys.path.append('/usr/local/lib/python2.7/dist-packages')
import cv2
HOME        = os.environ['HOME']
CAFFE_PATH  = HOME + '/caffe'
sys.path.insert(0, CAFFE_PATH +'/python')
import caffe

def normalize_image(image,scale_factor=255):
    if (np.max(image) == 0):
        return np.array(scale_factor * image,dtype=int);
    else:
        return np.array(scale_factor * image/np.max(image),dtype=int);

def mse(imageA, imageB):
	err = np.sum((imageA.astype("float") - imageB.astype("float")) ** 2)
	err /= float(imageA.shape[0] * imageA.shape[1])
	return err

def mse(imageA, imageB):
	# the 'Mean Squared Error' between the two images is the
	# sum of the squared difference between the two images;
	# NOTE: the two images must have the same dimension
	err = np.sum((imageA.astype("float") - imageB.astype("float")) ** 2)
	err /= float(imageA.shape[0] * imageA.shape[1])

	# return the MSE, the lower the error, the more "similar"
	# the two images are
	return err

def compare_images(imageA, imageB, title):
	# compute the mean squared error and structural similarity
	# index for the images
	m = mse(imageA, imageB)
	s = ssim(imageA, imageB)

	# setup the figure
	fig = plt.figure(title)
	plt.suptitle("MSE: %.2f, SSIM: %.2f" % (m, s))

	# show first image
	ax = fig.add_subplot(1, 2, 1)
	plt.imshow(imageA, cmap = plt.cm.gray)
	plt.axis("off")

	# show the second image
	ax = fig.add_subplot(1, 2, 2)
	plt.imshow(imageB, cmap = plt.cm.gray)
	plt.axis("off")

	# show the images
	plt.show()


######################## MAIN ########################
#  Read network
model   = '../../caffe/network/deploy.prototxt'
kernels = '../../caffe/network/network.caffemodel'
net = caffe.Net(model,kernels,caffe.TEST)
# Read sample and prepare it to be be loaded in caffe
image   = cv2.imread('./sample.png');
in_data = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

# Forward propagation of sample.png
net.forward_all(data = in_data)

# Read output
conv1  = net.blobs['conv1'].data[0]

# Normalize image in order to be compared later
c0_sw = normalize_image(conv1).astype("uint8")

layer_size = conv1.shape[0]
c0_hw = np.zeros(conv1.shape).astype("uint8");

# Read hardware results in grayscale
for i in range(layer_size):
    name     = './c0' + str(i) +'.png'
    tmp      = cv2.imread(name)
    tmp      = cv2.cvtColor(tmp, cv2.COLOR_BGR2GRAY)
    c0_hw[i,:,:] = tmp;

for i in range(layer_size):
    compare_images(c0_hw[i],c0_sw[i],"Haddoc2 vs Caffe")
