<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_21" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_33" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_15" />
        <signal name="XLXN_41" />
        <signal name="XLXN_17" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_45" />
        <signal name="XLXN_22" />
        <signal name="XLXN_24" />
        <signal name="XLXN_48" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="lut3_d" name="XLXI_2">
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin name="I2" />
            <blockpin name="LO" />
            <blockpin name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="XLXN_8" name="LO" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_10" name="I1" />
            <blockpin signalname="XLXN_9" name="I2" />
            <blockpin signalname="XLXN_15" name="LO" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_5">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="XLXN_12" name="I1" />
            <blockpin signalname="XLXN_11" name="I2" />
            <blockpin signalname="XLXN_27" name="LO" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="lut3_d" name="XLXI_6">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_19" name="I2" />
            <blockpin signalname="XLXN_28" name="LO" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_7">
            <blockpin name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_8">
            <blockpin name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_9">
            <blockpin name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_10">
            <blockpin name="I" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_11">
            <blockpin name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_12">
            <blockpin name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_13">
            <blockpin name="I" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_14">
            <blockpin name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_15">
            <blockpin name="I" />
            <blockpin signalname="XLXN_19" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_18">
            <blockpin signalname="XLXN_22" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_19">
            <blockpin signalname="XLXN_17" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_20">
            <blockpin signalname="XLXN_7" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_16">
            <blockpin signalname="XLXN_24" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_21">
            <blockpin signalname="XLXN_27" name="I0" />
            <blockpin signalname="XLXN_28" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_22">
            <blockpin signalname="XLXN_29" name="I" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="800" name="XLXI_2" orien="R0" />
        <text style="fontsize:56;fontname:Arial" x="780" y="608">A</text>
        <text style="fontsize:56;fontname:Arial" x="776" y="532">B</text>
        <text style="fontsize:56;fontname:Arial" x="748" y="684">Cin</text>
        <text style="fontsize:56;fontname:Arial" x="1268" y="536">Cout</text>
        <text style="fontsize:56;fontname:Arial" x="1268" y="612">S</text>
        <text style="fontsize:56;fontname:Arial" x="844" y="252">Full Adder 1 Bit</text>
        <text style="fontsize:56;fontname:Arial" x="876" y="1016">Full Adder 4 Bit</text>
        <instance x="480" y="1952" name="XLXI_3" orien="R0" />
        <instance x="1104" y="1952" name="XLXI_4" orien="R0" />
        <instance x="1744" y="1952" name="XLXI_5" orien="R0" />
        <instance x="2384" y="1952" name="XLXI_6" orien="R0" />
        <instance x="272" y="1232" name="XLXI_7" orien="R90" />
        <instance x="384" y="1232" name="XLXI_8" orien="R90" />
        <instance x="96" y="1232" name="XLXI_9" orien="R90" />
        <instance x="912" y="1232" name="XLXI_10" orien="R90" />
        <instance x="1024" y="1232" name="XLXI_11" orien="R90" />
        <instance x="1552" y="1232" name="XLXI_12" orien="R90" />
        <instance x="1664" y="1232" name="XLXI_13" orien="R90" />
        <instance x="2192" y="1232" name="XLXI_14" orien="R90" />
        <instance x="2304" y="1232" name="XLXI_15" orien="R90" />
        <instance x="2192" y="1936" name="XLXI_18" orien="R90" />
        <instance x="1552" y="1936" name="XLXI_19" orien="R90" />
        <instance x="912" y="1936" name="XLXI_20" orien="R90" />
        <branch name="XLXN_1">
            <wire x2="416" y1="1456" y2="1696" x1="416" />
            <wire x2="480" y1="1696" y2="1696" x1="416" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="304" y1="1456" y2="1760" x1="304" />
            <wire x2="480" y1="1760" y2="1760" x1="304" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="128" y1="1456" y2="1824" x1="128" />
            <wire x2="480" y1="1824" y2="1824" x1="128" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="880" y1="1760" y2="1760" x1="864" />
            <wire x2="880" y1="1760" y2="1936" x1="880" />
            <wire x2="864" y1="1920" y2="1936" x1="864" />
            <wire x2="880" y1="1936" y2="1936" x1="864" />
            <wire x2="944" y1="1920" y2="1920" x1="864" />
            <wire x2="944" y1="1920" y2="1936" x1="944" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="928" y1="1696" y2="1696" x1="864" />
            <wire x2="928" y1="1696" y2="1824" x1="928" />
            <wire x2="1104" y1="1824" y2="1824" x1="928" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1056" y1="1456" y2="1696" x1="1056" />
            <wire x2="1104" y1="1696" y2="1696" x1="1056" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="944" y1="1456" y2="1760" x1="944" />
            <wire x2="1104" y1="1760" y2="1760" x1="944" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1696" y1="1456" y2="1696" x1="1696" />
            <wire x2="1744" y1="1696" y2="1696" x1="1696" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1584" y1="1456" y2="1760" x1="1584" />
            <wire x2="1744" y1="1760" y2="1760" x1="1584" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1568" y1="1696" y2="1696" x1="1488" />
            <wire x2="1568" y1="1696" y2="1824" x1="1568" />
            <wire x2="1744" y1="1824" y2="1824" x1="1568" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1504" y1="1760" y2="1760" x1="1488" />
            <wire x2="1504" y1="1760" y2="1936" x1="1504" />
            <wire x2="1488" y1="1920" y2="1936" x1="1488" />
            <wire x2="1504" y1="1936" y2="1936" x1="1488" />
            <wire x2="1584" y1="1920" y2="1920" x1="1488" />
            <wire x2="1584" y1="1920" y2="1936" x1="1584" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="2336" y1="1456" y2="1696" x1="2336" />
            <wire x2="2384" y1="1696" y2="1696" x1="2336" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2224" y1="1456" y2="1760" x1="2224" />
            <wire x2="2384" y1="1760" y2="1760" x1="2224" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="2144" y1="1760" y2="1760" x1="2128" />
            <wire x2="2144" y1="1760" y2="1936" x1="2144" />
            <wire x2="2128" y1="1920" y2="1936" x1="2128" />
            <wire x2="2144" y1="1936" y2="1936" x1="2128" />
            <wire x2="2224" y1="1920" y2="1920" x1="2128" />
            <wire x2="2224" y1="1920" y2="1936" x1="2224" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="2864" y1="1760" y2="1760" x1="2768" />
            <wire x2="2864" y1="1760" y2="1936" x1="2864" />
        </branch>
        <instance x="2832" y="1936" name="XLXI_16" orien="R90" />
        <text style="fontsize:56;fontname:Arial" x="904" y="1188">A1</text>
        <text style="fontsize:56;fontname:Arial" x="1024" y="1188">B1</text>
        <text style="fontsize:56;fontname:Arial" x="1668" y="1192">B2</text>
        <text style="fontsize:56;fontname:Arial" x="2192" y="1192">A3</text>
        <text style="fontsize:56;fontname:Arial" x="2300" y="1192">B3</text>
        <text style="fontsize:56;fontname:Arial" x="1548" y="1192">A2</text>
        <text style="fontsize:56;fontname:Arial" x="276" y="1192">A0</text>
        <text style="fontsize:56;fontname:Arial" x="388" y="1200">B0</text>
        <text style="fontsize:56;fontname:Arial" x="80" y="1196">Cin</text>
        <text style="fontsize:56;fontname:Arial" x="912" y="2208">S0</text>
        <text style="fontsize:56;fontname:Arial" x="1552" y="2204">S1</text>
        <text style="fontsize:56;fontname:Arial" x="2192" y="2204">S2</text>
        <text style="fontsize:56;fontname:Arial" x="2832" y="2204">S3</text>
        <instance x="2992" y="1824" name="XLXI_21" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="2208" y1="1696" y2="1696" x1="2128" />
            <wire x2="2208" y1="1696" y2="1824" x1="2208" />
            <wire x2="2336" y1="1824" y2="1824" x1="2208" />
            <wire x2="2384" y1="1824" y2="1824" x1="2336" />
            <wire x2="2336" y1="1824" y2="1920" x1="2336" />
            <wire x2="2336" y1="1920" y2="1936" x1="2336" />
            <wire x2="2944" y1="1920" y2="1920" x1="2336" />
            <wire x2="2944" y1="1920" y2="1936" x1="2944" />
            <wire x2="2992" y1="1760" y2="1760" x1="2944" />
            <wire x2="2944" y1="1760" y2="1776" x1="2944" />
            <wire x2="2944" y1="1776" y2="1920" x1="2944" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2992" y1="1696" y2="1696" x1="2768" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="3264" y1="1728" y2="1728" x1="3248" />
            <wire x2="3264" y1="1728" y2="1888" x1="3264" />
            <wire x2="3264" y1="1888" y2="1936" x1="3264" />
            <wire x2="3264" y1="1888" y2="1888" x1="3248" />
        </branch>
        <instance x="3232" y="1936" name="XLXI_22" orien="R90" />
        <text style="fontsize:56;fontname:Arial" x="3052" y="2216">Overflow Flag</text>
    </sheet>
</drawing>