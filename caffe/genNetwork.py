#!/home/kamel/anaconda/bin/python


import os
import sys
import subprocess

HOME             = os.environ['HOME']
CAFFE_PATH       = HOME + '/caffe'
# CAFFE_PATH       = HOME + '/dev/caffe'


sys.path.insert(0, CAFFE_PATH +'/python')
import caffe

from caffe import layers as L
from caffe import params as P

def create_Net (lmdb,batch_size,C1,C2,C3):
	n = caffe.NetSpec()
	n.data, n.label = L.Data(batch_size=batch_size, backend=P.Data.LMDB, source=lmdb,
							transform_param=dict(scale=1./255), ntop=2)
	n.conv1 = L.Convolution(n.data, kernel_size=3, num_output=C1, weight_filler=dict(type='xavier'))
	n.Relu1 = L.ReLU(n.conv1, in_place=True)
	n.s1 = L.Pooling(n.Relu1, kernel_size=2, stride=2, pool=P.Pooling.MAX)
	n.conv2 = L.Convolution(n.s1, kernel_size=3, num_output=C2, weight_filler=dict(type='xavier'))
	n.Relu2 = L.ReLU(n.conv2, in_place=True)
	n.s2 = L.Pooling(n.Relu2, kernel_size=2, stride=2, pool=P.Pooling.MAX)
	n.conv3 = L.Convolution(n.s2, kernel_size=3, num_output=C3, weight_filler=dict(type='xavier'))
	n.Relu3 = L.ReLU(n.conv3, in_place=True)
	n.fc = L.InnerProduct(n.Relu3, num_output=10, weight_filler=dict(type='xavier'))
	n.cla = L.SoftmaxWithLoss(n.fc,n.label)
	n.acc = L.Accuracy(n.fc,n.label)
	return n.to_proto()


def create_solver(solver_prototxt,train_prototxt,test_prototxt):
	with open(solver_prototxt,'w') as f:
		f.write ("train_net: \"" + train_prototxt  + "\" " + "\n")
		f.write ("test_net: \""  + test_prototxt   + "\" " + "\n")
		f.write ("test_iter: 10" + "\n")
		f.write ("test_interval: 1000" + "\n")
		f.write ("test_compute_loss: true" + "\n")
		f.write ("base_lr: 0.01" + "\n")
		f.write ("lr_policy: \"step\"" + "\n")
		f.write ("gamma: 0.1" + "\n")
		f.write ("stepsize: 2500" + "\n")
		f.write ("display: 500" + "\n")
		f.write ("max_iter: 1500" + "\n")
		f.write ("weight_decay: 0.001" + "\n")
		f.write ("momentum: 0.9" + "\n")
		f.write ("solver_mode: CPU" + "\n")
		f.close()

#=========================== MAIN ============================#
CURRENT_PATH	=   os.path.dirname(os.path.realpath(__file__))
DATASET_PATH	= 	CURRENT_PATH  + "/dataset"
NETWORK_PATH	= 	CURRENT_PATH  + "/network"

train_dataset	= 	DATASET_PATH  + "/mnist_train"
test_dataset	= 	DATASET_PATH  + "/mnist_test"

solver_prototxt	=	NETWORK_PATH + "/solver.prototxt"
train_prototxt 	=	NETWORK_PATH + "/train.prototxt"
test_prototxt	=	NETWORK_PATH + "/test.prototxt"
DEPLOY_PROTO    =   NETWORK_PATH + "/deploy.prototxt"

os.system("rm -rf " + NETWORK_PATH)
os.system("mkdir " + NETWORK_PATH)

create_solver(solver_prototxt,train_prototxt,test_prototxt)

C1	=	3;
C2	=	5
C3	=	7;

print '\033[92m' + " Creating Convolutional Neural Network with topology :\n " + '\033[0m'

print "\t Layer 1 |" + str(C1) + "\t | Convolution of 3x3 kernel"
print "\t Layer 2 |" + str(C1) + "\t | Max pool susbsampling layer"
print "\t Layer 3 |" + str(C2) + "\t | Convolution of 3x3 kernel"
print "\t Layer 4 |" + str(C2) + "\t | Max pool susbsampling layer"
print "\t Layer 5 |" + str(C3) + "\t | Convolution of 3x3 kernel"
print "\t Layer 6 |" + str(10) + "\t | Fully connected layer \n \n"


print "\t Training set at: " + train_dataset
print "\t Testset at: " + test_dataset + "\n"

with open(train_prototxt, 'w') as f:
    f.write(str(create_Net(train_dataset,64,C1,C2,C3)))
    f.close()
with open(test_prototxt, 'w') as f:
    f.write(str(create_Net(test_dataset,100,C1,C2,C3)))
    f.close()
print '\033[92m' + "Succefully generated train and test prototxt files" + '\033[0m'
