rm -rf ./build/
rm -rf *.node
rm -rf Makefile

gpnode newproject -n cnn
gpnode setboard -n dreamcam_c3
gpnode adddevice -n usb
gpnode adddevice -n mt9

gpnode addprocess -n cnn -d ../cnn.proc

gpnode connect -f usb.out0 -t cnn.in
gpnode connect -f cnn.out1 -t usb.in1
gpnode connect -f cnn.out2 -t usb.in2
gpnode connect -f cnn.out3 -t usb.in3

gpnode setproperty -n cnn.enable -v 1

gpnode generate -o ./build
make compile send view
