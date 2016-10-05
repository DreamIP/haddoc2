-include Makefile.local

ifndef GPS_LIB
	$(error Define GPS_LIB in Makefile.local)
endif

all: generate compile send view

generate: ../convLayer.node
	cd "../" && gpnode generate -o "build" ${OPT}

compile:
	$(QUARTUS_TOOLS_PATH)quartus_sh --flow compile convLayer.qpf
send:
	$(QUARTUS_TOOLS_PATH)quartus_pgm -m jtag -c1 -o 'P;output_files/convLayer.sof'
view:
	LD_LIBRARY_PATH=$(GPS_VIEWER) $(GPS_VIEWER)gpviewer node_generated.xml

clean:
	rm -rf output_files incremental_db db IP greybox_tmp
	rm -f top.vhd pi.vhd fi.vhd ci.vhd
	rm -f node_generated.xml PLLJ_PLLSPE_INFO.txt fi.dot fi.png params.h
	rm -f convLayer.qpf convLayer.qsf convLayer.qws convLayer.sdc convLayer.cdf
printfi:
	dot -Tpng -o fi.png fi.dot
	xdg-open fi.png
