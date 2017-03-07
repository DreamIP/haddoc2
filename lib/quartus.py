import sys
import os

def gen_qsf (qsfFilename):
     with open (qsfFilename,'w') as f:
         # Device
         f.write("set_global_assignment -name FAMILY \"Stratix V\"\n");
         f.write("set_global_assignment -name DEVICE 5SEEBF45I4\n");
         f.write("set_global_assignment -name ORIGINAL_QUARTUS_VERSION 15.1\n");
         f.write("set_global_assignment -name TOP_LEVEL_ENTITY cnn_process\n");
         f.write("set_global_assignment -name MIN_CORE_JUNCTION_TEMP \"-40\"\n");
         f.write("set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100\n");
         f.write("set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top\n");
         f.write("set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top\n");
         f.write("set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top\n");
         f.write("set_global_assignment -name POWER_PRESET_COOLING_SOLUTION \"23 MM HEAT SINK WITH 200 LFPM AIRFLOW\"\n");
         f.write("set_global_assignment -name POWER_BOARD_THERMAL_MODEL \"NONE (CONSERVATIVE)\"\n");

         # LE Based arithmetic
         f.write("set_global_assignment -name DSP_BLOCK_BALANCING \"LOGIC ELEMENTS\"\n");
         f.write("set_global_assignment -name AUTO_DSP_RECOGNITION OFF\n");

         # Haddoc lib
         # TODO : autogenerate
         f.write("set_global_assignment -name VHDL_FILE cnn_process.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE params.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/cnn_types.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/convElement.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/to_signedPixel.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/maxPool.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/fcLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/display_mux.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/poolLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/taps.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/cnn_types.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/sumElement_single.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/convLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/poolV.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/firstLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/sumElement.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/neighExtractor.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE /home/kamel/dev/haddoc2/lib/hdl/poolH.vhd\n");
         f.write("set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top\n");
         f.close();

def gen_qpf(qpfFilename):
    with open (qpfFilename,'w') as f:
        f.write("QUARTUS_VERSION = \"15.1\"\n");
        f.write("PROJECT_REVISION = \"cnn_process\"\n");
        f.close();

def main(qsfFilename,qpfFilename):
    gen_qsf (qsfFilename);
    gen_qpf (qpfFilename);


if __name__ == '__main__':
    if (len(sys.argv) == 2):
        targetDir = sys.argv[1];
        qsfFilename = targetDir + "/cnn_process.qsf";
        qpfFilename = targetDir + "/cnn_process.qpf";
        main(qsfFilename,qpfFilename);
        print 'Succefully generated quartus project'
    else:
        print 'Not enought arguments'
        print 'python quartus.py <hdl_directory>'
