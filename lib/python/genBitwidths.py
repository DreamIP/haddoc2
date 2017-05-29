import sys
import os
import io
import numpy as np

def main (bitwidthFile,bitwidth):
    with open (bitwidthFile,'w') as f:
        f.write('library ieee;\n');
        f.write('  use	ieee.std_logic_1164.all;\n');
        f.write('  use	ieee.numeric_std.all;\n');
        f.write('  use  ieee.math_real.all;\n');
        f.write('package bitwidths is\n');
        f.write('  constant PIXEL_CONST	: integer :=' + str(bitwidth) + ';\n');
        f.write('  constant SUM_WIDTH     : integer := 3*PIXEL_CONST;\n');
        f.write('end bitwidths;\n');
