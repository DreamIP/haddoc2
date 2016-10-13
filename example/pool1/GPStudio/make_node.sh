gpnode newproject -n pool1
gpnode setboard -n dreamcam_c3
gpnode adddevice -n usb
gpnode adddevice -n mt9
gpnode addprocess -n pool1 -d ../pool1.proc

gpnode connect -f mt9.out -t usb.in0
gpnode connect -f mt9.out -t pool1.in
gpnode connect -f pool1.out1 -t usb.in1
gpnode connect -f pool1.out2 -t usb.in2
gpnode connect -f pool1.out3 -t usb.in3

gpnode generate -o ./build
