<?xml version="1.0" encoding="UTF-8"?>
<io driver="mt9" categ="imagesensor" pi_size_addr_rel="5" desc="">
  <parts>
    <part name="main">
      <svg width="100" height="100">
        <rect width="100" height="100" x="0" y="0" fill="lightgray"/>
        <path d="M10 20 L40 40 L40 25 L90 25 L90 75 L40 75 L40 60 L10 80 Z" fill="black" stroke="black" stroke-width="10" stroke-linejoin="round"/>
      </svg>
    </part>
  </parts>
  <files>
    <file name="mt9.sdc" type="sdc" group="hdl" path="hdl/mt9.sdc"/>
    <file name="video_sampler.v" type="verilog" group="hdl" path="hwlib:video_sampler/video_sampler.v"/>
    <file name="mt9.vhd" type="vhdl" group="hdl" path="hdl/mt9.vhd"/>
    <file name="mt9_config_slave.vhd" type="vhdl" group="hdl" path="hdl/mt9_config_slave.vhd"/>
    <file name="mt9_config_i2c.vhd" type="vhdl" group="hdl" path="hdl/mt9_config_i2c.vhd"/>
    <file name="MT9M031_datasheet.pdf" type="doc" group="doc" path="doc/MT9M031_DS_Rev. A 1009 EN.pdf"/>
    <file name="mt9.io" type="io" group="blockdef" path="mt9.io"/>
  </files>
  <resets>
    <reset name="reset_n" group="reset_n" direction="in"/>
  </resets>
  <flows>
    <flow name="out" size="8" type="out" desc="image flow from MT9 image sensor">
      <properties>
        <property name="datatype" type="flowtype" value="image"/>
        <property name="width" type="int" min="2" max="1280" propertymap="roi1.w.value/(binning.value ? 2 : 1)"/>
        <property name="height" type="int" min="2" max="960" propertymap="roi1.h.value/(binning.value ? 2 : 1)"/>
      </properties>
    </flow>
  </flows>
  <params>
    <param name="ENABLE" regaddr="0">
      <bitfields>
        <bitfield name="enable" type="int" bitfield="0" propertymap="enable.value" desc="Enable bit"/>
      </bitfields>
    </param>
    <param name="FLOWLENGHT" regaddr="1" propertymap="(roi1.w.value*roi1.h.value)/(binning.value ? 4 : 1)"/>
    <param name="XSTART" regaddr="2" propertymap="roi1.x.value"/>
    <param name="YSTART" regaddr="3" propertymap="roi1.y.value"/>
    <param name="XEND" regaddr="4" propertymap="roi1.x.value+roi1.w.value-1"/>
    <param name="YEND" regaddr="5" propertymap="roi1.y.value+roi1.h.value-1"/>
    <param name="MODE" regaddr="6">
      <bitfields>
        <bitfield name="autoexp" type="int" bitfield="0" propertymap="autoexposure.enable.value" desc="Auto exposure bit"/>
        <bitfield name="flipy" type="int" bitfield="1" propertymap="flipy.value" desc="flipy"/>
        <bitfield name="flipx" type="int" bitfield="2" propertymap="flipx.value" desc="flipx"/>
        <bitfield name="binning" type="int" bitfield="3" propertymap="binning.value" desc="flipx"/>
      </bitfields>
    </param>
    <param name="INTEGTIME" regaddr="7" propertymap="exposuretime.value"/>
    <param name="LINELENGHT" regaddr="8" propertymap="linelenght.value"/>
    <param name="AUTOEXPTARGET" regaddr="9" propertymap="autoexposure.target.value"/>
    <param name="AUTOEXPVMIN" regaddr="10" propertymap="autoexposure.min.value"/>
    <param name="AUTOEXPVMAX" regaddr="11" propertymap="autoexposure.max.value"/>
    <param name="AUTOEXPMINSTEP" regaddr="12" propertymap="autoexposure.stepmin.value"/>
    <param name="AUTOEXPMAXSTEP" regaddr="13" propertymap="autoexposure.stepmax.value"/>
    <param name="AUTOEXPDAMPOFSET" regaddr="14" propertymap="autoexposure.dampofset.value"/>
    <param name="AUTOEXPDAMPGAIN" regaddr="15" propertymap="autoexposure.dampgain.value"/>
    <param name="AUTOEXPDAMPMAX" regaddr="16" propertymap="autoexposure.dampmax.value"/>
  </params>
  <properties>
    <property name="enable" type="bool" desc="Enable or disable image sensor"/>
    <property name="roi1" type="group">
      <properties>
        <property name="x" type="int" value="320" min="0" max="1280"/>
        <property name="y" type="int" value="240" min="0" max="960"/>
        <property name="w" type="int" value="640" min="2" max="1280" step="2" assert="roi.w%2==0"/>
        <property name="h" type="int" value="480" min="2" max="960" step="2" assert="roi.h%2==0"/>
      </properties>
    </property>
    <property name="resolution" caption="resolution" type="enum" onchange="
    switch(resolution.bits)
    {
    case 0:
        roi1.w.value=640;
        roi1.h.value=480;
        binning.value=1;
        roi1.x.value=320;
        roi1.y.value=240;
        break;
    case 1:
        roi1.w.value=1280;
        roi1.h.value=960;
        binning.value=1;
        roi1.x.value=0;
        roi1.y.value=0;
        break;
    case 2:
        roi1.w.value=800;
        roi1.h.value=600;
        binning.value=0;
        roi1.x.value=240;
        roi1.y.value=180;
        break;
    case 3:
        roi1.w.value=1024;
        roi1.h.value=768;
        binning.value=0;
        roi1.x.value=128;
        roi1.y.value=96;
        break;
    case 4:
        roi1.w.value=1280;
        roi1.h.value=960;
        binning.value=0;
        roi1.x.value=0;
        roi1.y.value=0;
        break;
}">
      <enums>
        <enum name="320*240" value="0"/>
        <enum name="640*480" value="1"/>
        <enum name="800*600" value="2"/>
        <enum name="1024*768" value="3"/>
        <enum name="1280*1024" value="4"/>
      </enums>
    </property>
    <property name="exposuretime" caption="exposure time" type="sint" value="1000" min="0" max="4500"/>
    <property name="linelenght" type="int" value="1650" min="1650" max="4500"/>
    <property name="flipx" caption="X mirror" type="bool"/>
    <property name="flipy" caption="Y flip" type="bool"/>
    <property name="binning" caption="binning (/2)" type="bool" value="1"/>
    <property name="autoexposure" type="group">
      <properties>
        <property name="enable" type="bool"/>
        <property name="target" type="sint" value="1280" min="0" max="65000"/>
        <property name="min" type="sint" value="1" min="0" max="65000"/>
        <property name="max" type="sint" value="672" min="0" max="65000"/>
        <property name="stepmin" type="sint" value="112" min="0" max="255"/>
        <property name="stepmax" type="sint" value="8" min="0" max="255"/>
        <property name="dampofset" type="sint" value="512" min="0" max="65000"/>
        <property name="dampgain" type="sint" value="512" min="0" max="65000"/>
        <property name="dampmax" type="sint" value="320" min="0" max="65000"/>
      </properties>
    </property>
  </properties>
  <clocks>
    <clock name="clk_img" typical="9000000" direction="in"/>
    <clock name="clk_50k" typical="50000" domain="i2c" direction="in"/>
    <clock name="clk_100k" typical="100000" domain="i2c" direction="in" shift="180"/>
  </clocks>
  <ports>
    <port name="data_i" type="in" size="12"/>
    <port name="fval_i" type="in" size="1"/>
    <port name="lval_i" type="in" size="1"/>
    <port name="pixclk_i" type="in" size="1"/>
    <port name="extclk_o" type="out" size="1"/>
    <port name="reset_n_o" type="out" size="1"/>
    <port name="standby_o" type="out" size="1"/>
    <port name="oe_n_o" type="out" size="1"/>
    <port name="trigger_o" type="out" size="1"/>
    <port name="saddr_o" type="out" size="1"/>
    <port name="sdata_io" type="inout" size="1"/>
    <port name="sclk_o" type="out" size="1"/>
  </ports>
  <pins/>
</io>
