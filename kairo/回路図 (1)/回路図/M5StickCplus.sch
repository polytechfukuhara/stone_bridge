<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.05" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="FT1117M">
<packages>
<package name="FT1117M">
<pad name="GND" x="-1.905" y="-2.54" drill="0.6" shape="octagon"/>
<pad name="5V" x="-0.635" y="-2.54" drill="0.6" shape="octagon"/>
<pad name="SIGNAL" x="1.905" y="-2.54" drill="0.6" shape="octagon"/>
<wire x1="-3.81" y1="0" x2="3.81" y2="0" width="0.127" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="12.7" width="0.127" layer="21"/>
<wire x1="3.81" y1="12.7" x2="-3.81" y2="12.7" width="0.127" layer="21"/>
<wire x1="-3.81" y1="12.7" x2="-3.81" y2="0" width="0.127" layer="21"/>
<circle x="0" y="8.89" radius="3.81" width="0.127" layer="21"/>
<wire x1="1.27" y1="6.35" x2="-1.27" y2="6.35" width="0.127" layer="21" curve="-292.619865"/>
<wire x1="-1.27" y1="6.35" x2="1.27" y2="6.35" width="0.127" layer="21" curve="-67.380135"/>
<text x="-6" y="14" size="1.778" layer="21">サーボモータ</text>
<pad name="NC" x="0.635" y="-2.54" drill="0.6" shape="octagon"/>
<wire x1="-1.905" y1="-2.54" x2="-1.905" y2="0" width="0.127" layer="22"/>
<wire x1="-1.905" y1="0" x2="-0.635" y2="0" width="0.127" layer="22"/>
<wire x1="-0.635" y1="-2.54" x2="-0.635" y2="0" width="0.127" layer="22"/>
<wire x1="-0.635" y1="0" x2="0.635" y2="0" width="0.127" layer="22"/>
<wire x1="0.635" y1="-2.54" x2="0.635" y2="0" width="0.127" layer="22"/>
<wire x1="0.635" y1="0" x2="1.905" y2="0" width="0.127" layer="22"/>
<wire x1="1.905" y1="0" x2="1.905" y2="-2.54" width="0.127" layer="22"/>
</package>
</packages>
<symbols>
<symbol name="FT1117M">
<pin name="5V" x="-2.54" y="-2.54" length="middle" direction="in" rot="R90"/>
<pin name="SIGNAL" x="3.81" y="-2.54" length="middle" rot="R90"/>
<pin name="GND" x="-5.08" y="-2.54" length="middle" direction="out" rot="R90"/>
<wire x1="-7.62" y1="2.54" x2="7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="7.62" y1="2.54" x2="7.62" y2="27.94" width="0.254" layer="94"/>
<wire x1="7.62" y1="27.94" x2="-7.62" y2="27.94" width="0.254" layer="94"/>
<wire x1="-7.62" y1="27.94" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<circle x="0" y="20.32" radius="5.6796125" width="0.254" layer="94"/>
<wire x1="-2.54" y1="15.24" x2="2.54" y2="15.24" width="0.254" layer="94" curve="-126.869898"/>
<wire x1="2.54" y1="15.24" x2="-2.54" y2="12.7" width="0.254" layer="94" curve="-180"/>
<wire x1="2.54" y1="15.24" x2="-2.54" y2="15.24" width="0.254" layer="94" curve="-233.130102"/>
<text x="-6" y="29" size="1.778" layer="94">サーボモータ</text>
<pin name="NC" x="1.27" y="-2.54" length="middle" direction="nc" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="FT1117M">
<gates>
<gate name="G$1" symbol="FT1117M" x="0" y="-20.32"/>
</gates>
<devices>
<device name="" package="FT1117M">
<connects>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="NC" pad="NC"/>
<connect gate="G$1" pin="SIGNAL" pad="SIGNAL"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="M5stickcPlus">
<packages>
<package name="M5STICK">
<pad name="GND" x="91.2" y="-1329.6" drill="0.6" shape="square"/>
<pad name="5VOUT" x="93.6" y="-1329.6" drill="0.6" shape="square"/>
<pad name="G26" x="96" y="-1329.6" drill="0.6" shape="square"/>
<pad name="G36/G25" x="98.4" y="-1329.6" drill="0.6" shape="square"/>
<pad name="GO" x="100.8" y="-1329.6" drill="0.6" shape="square"/>
<pad name="BAT" x="103.2" y="-1329.6" drill="0.6" shape="square"/>
<pad name="3V3" x="105.6" y="-1329.6" drill="0.6" shape="square"/>
<pad name="5VIN" x="108" y="-1329.6" drill="0.6" shape="square"/>
<pad name="VOUT" x="98.4" y="-1376.33" drill="0.6" shape="square"/>
<pad name="G32" x="100.8" y="-1376.33" drill="0.6" shape="square"/>
<pad name="G33" x="103.2" y="-1376.33" drill="0.6" shape="square"/>
<pad name="GND1" x="96" y="-1376.33" drill="0.6" shape="square"/>
<rectangle x1="88.9" y1="-1376.68" x2="110.49" y2="-1329.69" layer="44"/>
<text x="95.25" y="-1370.33" size="1.27" layer="15">USB-TypeC</text>
<rectangle x1="90.17" y1="-1376.68" x2="109.22" y2="-1329.69" layer="22"/>
</package>
</packages>
<symbols>
<symbol name="M5STICKCPLUS">
<pin name="GND" x="-16.8" y="21.6" length="middle" rot="R90"/>
<pin name="5V　→" x="-14.4" y="21.6" length="middle" rot="R90"/>
<pin name="G26" x="-12" y="21.6" length="middle" rot="R90"/>
<pin name="G36/G25" x="-9.6" y="21.6" length="middle" rot="R90"/>
<pin name="GO" x="-7.2" y="21.6" length="middle" rot="R90"/>
<pin name="BAT" x="-4.8" y="21.6" length="middle" rot="R90"/>
<pin name="3V3" x="-2.4" y="21.6" length="middle" rot="R90"/>
<pin name="5V　←" x="0" y="21.6" length="middle" rot="R90"/>
<pin name="V　OUT" x="-9.6" y="-31.5" length="middle" rot="R90"/>
<pin name="G32" x="-7.4" y="-31.5" length="middle" rot="R90"/>
<pin name="G33" x="-5.3" y="-31.5" length="middle" rot="R90"/>
<pin name="GND1" x="-11.7" y="-31.54" length="middle" rot="R90"/>
<wire x1="-19.2" y1="21.6" x2="-19.2" y2="-26.4" width="0.254" layer="94"/>
<wire x1="-19.2" y1="-26.4" x2="2.4" y2="-26.4" width="0.254" layer="94"/>
<wire x1="2.4" y1="-26.4" x2="2.4" y2="21.6" width="0.254" layer="94"/>
<wire x1="2.4" y1="21.6" x2="-19.2" y2="21.6" width="0.254" layer="94"/>
<wire x1="-11.12" y1="-23.63" x2="-5.56" y2="-23.63" width="0.254" layer="94"/>
<wire x1="-11.12" y1="-20.85" x2="-5.56" y2="-20.85" width="0.254" layer="94"/>
<wire x1="-11.12" y1="-23.63" x2="-11.12" y2="-20.85" width="0.254" layer="94" curve="-180"/>
<wire x1="-5.56" y1="-20.85" x2="-5.56" y2="-23.63" width="0.254" layer="94" curve="-180"/>
<text x="-10.9662" y="-20.3658" size="1.27" layer="94">USB C</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="M5STICKCPLUS">
<gates>
<gate name="G$3" symbol="M5STICKCPLUS" x="7.62" y="2.54"/>
</gates>
<devices>
<device name="" package="M5STICK">
<connects>
<connect gate="G$3" pin="3V3" pad="3V3"/>
<connect gate="G$3" pin="5V　←" pad="5VIN"/>
<connect gate="G$3" pin="5V　→" pad="5VOUT"/>
<connect gate="G$3" pin="BAT" pad="BAT"/>
<connect gate="G$3" pin="G26" pad="G26"/>
<connect gate="G$3" pin="G32" pad="G32"/>
<connect gate="G$3" pin="G33" pad="G33"/>
<connect gate="G$3" pin="G36/G25" pad="G36/G25"/>
<connect gate="G$3" pin="GND" pad="GND"/>
<connect gate="G$3" pin="GND1" pad="GND1"/>
<connect gate="G$3" pin="GO" pad="GO"/>
<connect gate="G$3" pin="V　OUT" pad="VOUT"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="TE Connectivity 1005447-1">
<packages>
<package name="TECONNECTIVITY1005447-1">
<pad name="P$1" x="-2.016" y="-2" drill="0.6" shape="square"/>
<pad name="P$2" x="-0.778" y="-2" drill="0.6" shape="square"/>
<wire x1="-2.016" y1="-2" x2="-2.016" y2="0" width="0.127" layer="21"/>
<wire x1="-0.778" y1="-2" x2="-0.778" y2="0" width="0.127" layer="21"/>
<wire x1="-2.45" y1="0" x2="0.508" y2="0" width="0.127" layer="21"/>
<wire x1="0.508" y1="0" x2="1.778" y2="0" width="0.127" layer="21"/>
<wire x1="1.778" y1="0" x2="2.6" y2="0" width="0.127" layer="21"/>
<wire x1="2.6" y1="0" x2="2.6" y2="9.8" width="0.127" layer="21"/>
<wire x1="2.6" y1="9.8" x2="-2.45" y2="9.8" width="0.127" layer="21"/>
<wire x1="-2.45" y1="9.8" x2="-2.45" y2="0" width="0.127" layer="21"/>
<pad name="P$3" x="0.508" y="-2.032" drill="0.6" shape="square"/>
<pad name="P$4" x="1.778" y="-2.032" drill="0.6" shape="square"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-2.032" width="0.127" layer="21"/>
<wire x1="1.778" y1="0" x2="1.778" y2="-2.032" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="TECONNECTIVITY1005447-1">
<pin name="GND" x="-1.762" y="-5" visible="pin" length="middle" direction="out" rot="R90"/>
<pin name="SIG" x="0.602" y="-5" visible="pin" length="middle" rot="R90"/>
<wire x1="-2.45" y1="0" x2="2.45" y2="0" width="0.254" layer="94"/>
<wire x1="-2.45" y1="0" x2="-2.45" y2="9.8" width="0.254" layer="94"/>
<wire x1="-2.45" y1="9.8" x2="2.45" y2="9.8" width="0.254" layer="94"/>
<wire x1="2.45" y1="9.8" x2="2.45" y2="0" width="0.254" layer="94"/>
<pin name="VCC" x="-0.6604" y="-5.0038" length="middle" direction="in" rot="R90"/>
<pin name="NC" x="1.7342" y="-2.4738" length="short" direction="nc" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TECONNECTIVITY1005447-1" uservalue="yes">
<gates>
<gate name="G$1" symbol="TECONNECTIVITY1005447-1" x="0" y="-5.08"/>
</gates>
<devices>
<device name="" package="TECONNECTIVITY1005447-1">
<connects>
<connect gate="G$1" pin="GND" pad="P$1"/>
<connect gate="G$1" pin="NC" pad="P$3"/>
<connect gate="G$1" pin="SIG" pad="P$4"/>
<connect gate="G$1" pin="VCC" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="FT1117M" deviceset="FT1117M" device=""/>
<part name="U$2" library="M5stickcPlus" deviceset="M5STICKCPLUS" device=""/>
<part name="U$3" library="TE Connectivity 1005447-1" deviceset="TECONNECTIVITY1005447-1" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="30.48" y="-10.16" smashed="yes" rot="R180"/>
<instance part="U$2" gate="G$3" x="0" y="43.18" smashed="yes"/>
<instance part="U$3" gate="G$1" x="53.34" y="-10.16" smashed="yes" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="35.56" y1="-7.62" x2="35.56" y2="7.62" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$3" pin="GND1"/>
<wire x1="35.56" y1="7.62" x2="-11.7" y2="7.62" width="0.1524" layer="91"/>
<wire x1="-11.7" y1="7.62" x2="-11.7" y2="11.64" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="55.102" y1="-5.16" x2="55.102" y2="7.62" width="0.1524" layer="91"/>
<wire x1="55.102" y1="7.62" x2="35.56" y2="7.62" width="0.1524" layer="91"/>
<junction x="35.56" y="7.62"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="5V"/>
<wire x1="33.02" y1="-7.62" x2="33.02" y2="5.08" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$3" pin="V　OUT"/>
<wire x1="33.02" y1="5.08" x2="-9.6" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-9.6" y1="5.08" x2="-9.6" y2="11.68" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="VCC"/>
<wire x1="54.0004" y1="-5.1562" x2="54.0004" y2="5.08" width="0.1524" layer="91"/>
<wire x1="54.0004" y1="5.08" x2="33.02" y2="5.08" width="0.1524" layer="91"/>
<junction x="33.02" y="5.08"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="NC"/>
<wire x1="29.21" y1="-7.62" x2="29.21" y2="2.54" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$3" pin="G33"/>
<wire x1="29.21" y1="2.54" x2="-5.3" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-5.3" y1="2.54" x2="-5.3" y2="11.68" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="SIG"/>
<wire x1="52.738" y1="-5.16" x2="52.738" y2="2.54" width="0.1524" layer="91"/>
<wire x1="52.738" y1="2.54" x2="29.21" y2="2.54" width="0.1524" layer="91"/>
<junction x="29.21" y="2.54"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SIGNAL"/>
<wire x1="26.67" y1="-7.62" x2="26.67" y2="0" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$3" pin="G32"/>
<wire x1="26.67" y1="0" x2="-7.4" y2="0" width="0.1524" layer="91"/>
<wire x1="-7.4" y1="0" x2="-7.4" y2="11.68" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="NC"/>
<wire x1="51.6058" y1="-7.6862" x2="51.6058" y2="0" width="0.1524" layer="91"/>
<wire x1="51.6058" y1="0" x2="26.67" y2="0" width="0.1524" layer="91"/>
<junction x="26.67" y="0"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
