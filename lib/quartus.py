import sys
import os

def gen_qsf (qsfFilename,haddoc_lib_dir,vhdlTarget):
     with open (qsfFilename,'w') as f:
         # Device
         f.write("set_global_assignment -name FAMILY \"CYCLONE V\"\n");
         f.write("set_global_assignment -name DEVICE 5CGXFC9E7F35C8\n");
         f.write("set_global_assignment -name ORIGINAL_QUARTUS_VERSION 15.1\n");
         f.write("set_global_assignment -name TOP_LEVEL_ENTITY cnn_process\n");
         f.write("set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0\n");
         f.write("set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85\n");
         f.write("set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top\n");
         f.write("set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top\n");
         f.write("set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top\n");
         f.write("set_global_assignment -name POWER_PRESET_COOLING_SOLUTION \"23 MM HEAT SINK WITH 200 LFPM AIRFLOW\"\n");
         f.write("set_global_assignment -name POWER_BOARD_THERMAL_MODEL \"NONE (CONSERVATIVE)\"\n");
         f.write("set_global_assignment -name PROJECT_OUTPUT_DIRECTORY build\n");
         f.write("set_global_assignment -name NUM_PARALLEL_PROCESSORS 4\n");

         # Logic Elements Based arithmetic
         f.write("set_global_assignment -name DSP_BLOCK_BALANCING \"LOGIC ELEMENTS\"\n");
         f.write("set_global_assignment -name AUTO_DSP_RECOGNITION OFF\n");

         # Generated files
         f.write("set_global_assignment -name VHDL_FILE " + vhdlTarget     + "/bitwidths.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/cnn_types.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + vhdlTarget     + "/params.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + vhdlTarget     + "/cnn_process.vhd\n");

         # Haddoc2 lib
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/convElement.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/to_signedPixel.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/maxPool.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/fcLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/display_mux.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/poolLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/taps.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/cnn_types.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/sumElement_single.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/convLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/poolV.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/firstLayer.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/sumElement.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/neighExtractor.vhd\n");
         f.write("set_global_assignment -name VHDL_FILE " + haddoc_lib_dir + "/poolH.vhd\n");
         f.write("set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top\n");
         f.close();

def gen_qpf(qpfFilename):
    with open (qpfFilename,'w') as f:
        f.write("QUARTUS_VERSION = \"16.1\"\n");
        f.write("PROJECT_REVISION = \"cnn_process\"\n");
        f.close();

def main(qsfFilename,qpfFilename,haddoc_lib_dir,target_dir):
    gen_qsf (qsfFilename,haddoc_lib_dir,target_dir);
    gen_qpf (qpfFilename);


if __name__ == '__main__':
    if (len(sys.argv) == 2):
        cwd       = os.getcwd()
        file_path = os.path.dirname(os.path.realpath(__file__))
        haddoc_lib_dir = file_path + '/hdl'
        print "Haddoc2 lib in " + haddoc_lib_dir
        targetDir = sys.argv[1];
        vhdlTarget =  targetDir + 'hdl_generated';
        qsfFilename = targetDir + "cnn_process.qsf";
        qpfFilename = targetDir + "cnn_process.qpf";

        main(qsfFilename,qpfFilename,haddoc_lib_dir,vhdlTarget);
        print 'Succefully generated quartus project'
    else:
        print 'Not enought arguments'
        print 'python quartus.py <hdl_directory>'
