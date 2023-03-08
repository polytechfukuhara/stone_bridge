<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<pad name="VOUT" x="98.4" y="-1377.6" drill="0.6" shape="square"/>
<pad name="G32" x="100.8" y="-1377.6" drill="0.6" shape="square"/>
<pad name="G33" x="103.2" y="-1377.6" drill="0.6" shape="square"/>
<pad name="GND1" x="96" y="-1377.6" drill="0.6" shape="square"/>
<wire x1="88.8" y1="-1329.6" x2="110.4" y2="-1329.6" width="0.127" layer="21"/>
<wire x1="110.4" y1="-1329.6" x2="110.4" y2="-1377.6" width="0.127" layer="21"/>
<wire x1="88.8" y1="-1329.6" x2="88.8" y2="-1377.6" width="0.127" layer="21"/>
<wire x1="88.8" y1="-1377.6" x2="110.4" y2="-1377.6" width="0.127" layer="21"/>
<wire x1="97.47" y1="-1373.244" x2="101.802" y2="-1373.244" width="0.127" layer="21"/>
<wire x1="97.47" y1="-1375.41" x2="101.802" y2="-1375.41" width="0.127" layer="21"/>
<wire x1="97.47" y1="-1375.41" x2="97.47" y2="-1373.244" width="0.127" layer="21" curve="-180"/>
<wire x1="101.802" y1="-1373.244" x2="101.802" y2="-1375.41" width="0.127" layer="21" curve="-180"/>
<text x="96.88" y="-1371.89" size="1.27" layer="21">USB C</text>
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
<pin name="V　OUT" x="-9.6" y="-26.4" length="middle" rot="R270"/>
<pin name="G32" x="-7.2" y="-26.4" length="middle" rot="R270"/>
<pin name="G33" x="-4.8" y="-26.4" length="middle" rot="R270"/>
<pin name="GND1" x="-12" y="-26.4" length="middle" rot="R270"/>
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
<library name="battery" urn="urn:adsk.eagle:library:109">
<description>&lt;b&gt;Lithium Batteries and NC Accus&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="CR2032V" urn="urn:adsk.eagle:footprint:4522/1" library_version="3">
<description>&lt;b&gt;LI BATTERY&lt;/b&gt; Varta</description>
<wire x1="1.651" y1="-1.905" x2="1.651" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.905" x2="2.286" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-3.175" x2="-2.54" y2="3.175" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.905" x2="2.286" y2="1.905" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="-6.858" x2="-2.54" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-2.54" y1="3.175" x2="-2.54" y2="6.858" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-6.858" x2="-2.54" y2="-6.858" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-6.858" x2="-1.905" y2="-3.175" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-3.175" x2="-1.905" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="3.175" x2="-1.905" y2="6.858" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-1.905" x2="1.651" y2="1.905" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-1.905" x2="1.651" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.905" x2="1.651" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.905" x2="2.286" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="1.651" y1="1.905" x2="1.651" y2="4.445" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="6.858" x2="-2.54" y2="6.858" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="3.175" x2="-2.54" y2="3.175" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-3.175" x2="-2.54" y2="-3.175" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="0" x2="-2.921" y2="0" width="0.254" layer="21"/>
<wire x1="-3.556" y1="0.635" x2="-3.556" y2="-0.635" width="0.254" layer="21"/>
<wire x1="2.921" y1="-2.413" x2="2.921" y2="-3.683" width="0.254" layer="21"/>
<wire x1="-1.905" y1="-9.398" x2="-1.27" y2="-10.033" width="0.1524" layer="21" curve="90"/>
<wire x1="-1.905" y1="9.398" x2="-1.27" y2="10.033" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="-10.033" x2="0.381" y2="-10.033" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="10.033" x2="0.381" y2="10.033" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-10.033" x2="1.016" y2="-9.398" width="0.1524" layer="21" curve="90"/>
<wire x1="0.381" y1="10.033" x2="1.016" y2="9.398" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.016" y1="-9.017" x2="1.651" y2="-8.382" width="0.1524" layer="21" curve="90"/>
<wire x1="1.016" y1="9.017" x2="1.651" y2="8.382" width="0.1524" layer="21" curve="-90"/>
<wire x1="1.016" y1="-9.398" x2="1.016" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.016" y1="1.143" x2="1.016" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="1.016" y1="1.143" x2="1.016" y2="9.398" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-4.445" x2="1.651" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="1.651" y1="-4.445" x2="1.651" y2="-8.382" width="0.1524" layer="21"/>
<wire x1="2.286" y1="4.445" x2="1.651" y2="4.445" width="0.1524" layer="21"/>
<wire x1="1.651" y1="4.445" x2="1.651" y2="8.382" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-9.398" x2="-1.905" y2="-6.858" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="6.858" x2="-1.905" y2="9.398" width="0.1524" layer="21"/>
<pad name="+" x="-2.54" y="-5.08" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="+@1" x="-2.54" y="5.08" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="-" x="2.286" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="4.064" y="2.54" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="0.254" y="-3.683" size="1.27" layer="21" ratio="10" rot="R90">Lith.3V</text>
<text x="4.699" y="-9.017" size="1.27" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="CR2032V" urn="urn:adsk.eagle:package:4578/1" type="box" library_version="3">
<description>LI BATTERY Varta</description>
<packageinstances>
<packageinstance name="CR2032V"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="1V2+2" urn="urn:adsk.eagle:symbol:4517/1" library_version="3">
<wire x1="-1.905" y1="0.635" x2="-1.905" y2="0" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.905" y2="0" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="-0.635" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="2.54" x2="-0.635" y2="0" width="0.4064" layer="94"/>
<wire x1="-0.635" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-0.635" y1="0" x2="-0.635" y2="-2.54" width="0.4064" layer="94"/>
<text x="-2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="-" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="+@1" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CR2032V" urn="urn:adsk.eagle:component:4621/2" prefix="G" library_version="3">
<description>&lt;b&gt;LI BATTERY&lt;/b&gt; Varta</description>
<gates>
<gate name="1" symbol="1V2+2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="CR2032V">
<connects>
<connect gate="1" pin="+" pad="+"/>
<connect gate="1" pin="+@1" pad="+@1"/>
<connect gate="1" pin="-" pad="-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:4578/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
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
<part name="U$1" library="M5stickcPlus" deviceset="M5STICKCPLUS" device=""/>
<part name="G1" library="battery" library_urn="urn:adsk.eagle:library:109" deviceset="CR2032V" device="" package3d_urn="urn:adsk.eagle:package:4578/1"/>
<part name="G2" library="battery" library_urn="urn:adsk.eagle:library:109" deviceset="CR2032V" device="" package3d_urn="urn:adsk.eagle:package:4578/1"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="45.72" y1="124.46" x2="45.72" y2="109.22" width="0.1524" layer="96"/>
<wire x1="45.72" y1="109.22" x2="71.12" y2="109.22" width="0.1524" layer="96"/>
<wire x1="71.12" y1="109.22" x2="71.12" y2="124.46" width="0.1524" layer="96"/>
<wire x1="71.12" y1="124.46" x2="45.72" y2="124.46" width="0.1524" layer="96"/>
<text x="58.5" y="125.4" size="1.778" layer="96">電池ホルダー</text>
<text x="28.8" y="77.5" size="1.778" layer="94">M5StickC Plus</text>
<text x="29.6" y="73.9" size="1.778" layer="94">スマートキー側</text>
</plain>
<instances>
<instance part="U$1" gate="G$3" x="45.72" y="68.58" smashed="yes"/>
<instance part="G1" gate="1" x="50.8" y="116.84" smashed="yes">
<attribute name="NAME" x="48.26" y="120.015" size="1.778" layer="95"/>
<attribute name="VALUE" x="48.26" y="111.76" size="1.778" layer="96"/>
</instance>
<instance part="G2" gate="1" x="60.96" y="116.84" smashed="yes">
<attribute name="NAME" x="58.42" y="120.015" size="1.778" layer="95"/>
<attribute name="VALUE" x="58.42" y="111.76" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="G1" gate="1" pin="+"/>
<pinref part="G2" gate="1" pin="-"/>
<junction x="55.88" y="116.84"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="G2" gate="1" pin="+"/>
<wire x1="66.04" y1="116.84" x2="66.04" y2="96.52" width="0.1524" layer="91"/>
<wire x1="66.04" y1="96.52" x2="45.72" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$3" pin="5V　←"/>
<wire x1="45.72" y1="96.52" x2="45.72" y2="90.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$3" pin="5V　→"/>
<pinref part="G1" gate="1" pin="-"/>
<wire x1="31.32" y1="90.18" x2="31.32" y2="116.84" width="0.1524" layer="91"/>
<wire x1="31.32" y1="116.84" x2="45.72" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
