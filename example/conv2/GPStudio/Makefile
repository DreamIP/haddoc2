OUT_PWD := build/
generate: /home/kamel/dev/haddoc2/example/conv2/GPStudio/convLayer.node
	gpnode generate -o $(OUT_PWD) ${OPT}

compile:
	cd $(OUT_PWD) && make -f Makefile compile

send:
	cd $(OUT_PWD) && make -f Makefile send

view:
	cd $(OUT_PWD) && make -f Makefile view

clean:
	cd $(OUT_PWD) && make -f Makefile clean

printfi:
	cd $(OUT_PWD) && make -f Makefile printfi

