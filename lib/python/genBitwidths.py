##----------------------------------------------------------------------------
## Title      : genBitwidths
## Project    : Haddoc2
##----------------------------------------------------------------------------
## File       : genBitwidths.py
## Author     : K. Abdelouahab
## Company    : Institut Pascal
## Created    : 26-10-2016
## Last update: 07-07-2017
##----------------------------------------------------------------------------
## Description: A simple script to generate bitwidth.vhd file that defines
##              fixed point formats used in haddoc2 generated inference engines 
##----------------------------------------------------------------------------

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
