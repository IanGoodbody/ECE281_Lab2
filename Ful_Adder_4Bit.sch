<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_30" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_35" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <blockdef name="lut3_d">
            <timestamp>2007-4-25T21:45:57</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="lut3_d" name="Adder">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin name="LO" />
            <blockpin name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_5">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_3" name="I2" />
            <blockpin signalname="XLXN_10" name="LO" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_6">
            <blockpin signalname="XLXN_10" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_14" name="LO" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_7">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_15" name="I2" />
            <blockpin signalname="XLXN_18" name="LO" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_8">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="XLXN_22" name="LO" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_12">
            <blockpin name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_13">
            <blockpin name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_14">
            <blockpin name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_15">
            <blockpin name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_16">
            <blockpin name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_17">
            <blockpin name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_18">
            <blockpin signalname="XLXN_9" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_19">
            <blockpin signalname="XLXN_13" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_20">
            <blockpin signalname="XLXN_17" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_21">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_22">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_9">
            <blockpin name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_11">
            <blockpin name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_10">
            <blockpin name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="720" y="2016" name="XLXI_5" orien="R0" />
        <instance x="1296" y="2016" name="XLXI_6" orien="R0" />
        <instance x="1840" y="2016" name="XLXI_7" orien="R0" />
        <instance x="2400" y="2016" name="XLXI_8" orien="R0" />
        <instance x="1216" y="1376" name="XLXI_12" orien="R90" />
        <instance x="1136" y="1376" name="XLXI_13" orien="R90" />
        <instance x="1776" y="1376" name="XLXI_14" orien="R90" />
        <instance x="1696" y="1376" name="XLXI_15" orien="R90" />
        <instance x="2336" y="1376" name="XLXI_16" orien="R90" />
        <instance x="2256" y="1376" name="XLXI_17" orien="R90" />
        <instance x="1168" y="2000" name="XLXI_18" orien="R90" />
        <instance x="1728" y="2000" name="XLXI_19" orien="R90" />
        <instance x="2288" y="2000" name="XLXI_20" orien="R90" />
        <instance x="2848" y="2000" name="XLXI_21" orien="R90" />
        <instance x="3008" y="2000" name="XLXI_22" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="464" y1="1616" y2="1888" x1="464" />
            <wire x2="704" y1="1888" y2="1888" x1="464" />
            <wire x2="720" y1="1888" y2="1888" x1="704" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="624" y1="1632" y2="1824" x1="624" />
            <wire x2="704" y1="1824" y2="1824" x1="624" />
            <wire x2="720" y1="1824" y2="1824" x1="704" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="704" y1="1632" y2="1760" x1="704" />
            <wire x2="720" y1="1760" y2="1760" x1="704" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1120" y1="1824" y2="1824" x1="1104" />
            <wire x2="1120" y1="1824" y2="1984" x1="1120" />
            <wire x2="1120" y1="1984" y2="2000" x1="1120" />
            <wire x2="1200" y1="1984" y2="1984" x1="1120" />
            <wire x2="1200" y1="1984" y2="2000" x1="1200" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1152" y1="1760" y2="1760" x1="1104" />
            <wire x2="1152" y1="1760" y2="1888" x1="1152" />
            <wire x2="1296" y1="1888" y2="1888" x1="1152" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1248" y1="1600" y2="1760" x1="1248" />
            <wire x2="1296" y1="1760" y2="1760" x1="1248" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1168" y1="1600" y2="1712" x1="1168" />
            <wire x2="1200" y1="1712" y2="1712" x1="1168" />
            <wire x2="1200" y1="1712" y2="1824" x1="1200" />
            <wire x2="1296" y1="1824" y2="1824" x1="1200" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="1696" y1="1824" y2="1824" x1="1680" />
            <wire x2="1696" y1="1824" y2="2000" x1="1696" />
            <wire x2="1680" y1="1984" y2="2000" x1="1680" />
            <wire x2="1696" y1="2000" y2="2000" x1="1680" />
            <wire x2="1760" y1="1984" y2="1984" x1="1680" />
            <wire x2="1760" y1="1984" y2="2000" x1="1760" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="1728" y1="1760" y2="1760" x1="1680" />
            <wire x2="1728" y1="1760" y2="1888" x1="1728" />
            <wire x2="1840" y1="1888" y2="1888" x1="1728" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1808" y1="1600" y2="1760" x1="1808" />
            <wire x2="1840" y1="1760" y2="1760" x1="1808" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1728" y1="1600" y2="1680" x1="1728" />
            <wire x2="1760" y1="1680" y2="1680" x1="1728" />
            <wire x2="1760" y1="1680" y2="1824" x1="1760" />
            <wire x2="1840" y1="1824" y2="1824" x1="1760" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2240" y1="1824" y2="1824" x1="2224" />
            <wire x2="2240" y1="1824" y2="2000" x1="2240" />
            <wire x2="2224" y1="1984" y2="2000" x1="2224" />
            <wire x2="2240" y1="2000" y2="2000" x1="2224" />
            <wire x2="2320" y1="1984" y2="1984" x1="2224" />
            <wire x2="2320" y1="1984" y2="2000" x1="2320" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2288" y1="1760" y2="1760" x1="2224" />
            <wire x2="2288" y1="1760" y2="1888" x1="2288" />
            <wire x2="2400" y1="1888" y2="1888" x1="2288" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2368" y1="1600" y2="1760" x1="2368" />
            <wire x2="2400" y1="1760" y2="1760" x1="2368" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2288" y1="1600" y2="1680" x1="2288" />
            <wire x2="2320" y1="1680" y2="1680" x1="2288" />
            <wire x2="2320" y1="1680" y2="1824" x1="2320" />
            <wire x2="2400" y1="1824" y2="1824" x1="2320" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="2880" y1="1824" y2="1824" x1="2784" />
            <wire x2="2880" y1="1824" y2="2000" x1="2880" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="3040" y1="1760" y2="1760" x1="2784" />
            <wire x2="3040" y1="1760" y2="2000" x1="3040" />
        </branch>
        <instance x="1568" y="768" name="Adder" orien="R0" />
        <instance x="432" y="1392" name="XLXI_9" orien="R90" />
        <instance x="592" y="1408" name="XLXI_11" orien="R90" />
        <instance x="672" y="1408" name="XLXI_10" orien="R90" />
        <text style="fontsize:56;fontname:Arial" x="1552" y="220">1 Bit Adder Interface</text>
        <text style="fontsize:56;fontname:Arial" x="1996" y="496">Cout</text>
        <text style="fontsize:56;fontname:Arial" x="2000" y="592">S</text>
        <text style="fontsize:56;fontname:Arial" x="1476" y="640">Cin</text>
        <text style="fontsize:56;fontname:Arial" x="1512" y="572">A</text>
        <text style="fontsize:56;fontname:Arial" x="1512" y="512">B</text>
        <text style="fontsize:56;fontname:Arial" x="1348" y="1188">4 Bit Carry Ripple Adder</text>
        <text style="fontsize:56;fontname:Arial" x="428" y="1328">Cin</text>
        <text style="fontsize:56;fontname:Arial" x="592" y="1328">A0</text>
        <text style="fontsize:56;fontname:Arial" x="688" y="1324">B0</text>
        <text style="fontsize:56;fontname:Arial" x="1136" y="1308">A1</text>
        <text style="fontsize:56;fontname:Arial" x="1220" y="1308">B1</text>
        <text style="fontsize:56;fontname:Arial" x="1692" y="1324">A2</text>
        <text style="fontsize:56;fontname:Arial" x="1780" y="1320">B2</text>
        <text style="fontsize:56;fontname:Arial" x="2260" y="1340">A3</text>
        <text style="fontsize:56;fontname:Arial" x="2340" y="1332">B3</text>
        <text style="fontsize:56;fontname:Arial" x="3004" y="2276">Cout</text>
        <text style="fontsize:56;fontname:Arial" x="1168" y="2272">S0</text>
        <text style="fontsize:56;fontname:Arial" x="1728" y="2272">S1</text>
        <text style="fontsize:56;fontname:Arial" x="2296" y="2276">S2</text>
        <text style="fontsize:56;fontname:Arial" x="2856" y="2272">S3</text>
    </sheet>
</drawing>