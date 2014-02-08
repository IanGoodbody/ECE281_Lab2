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
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
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
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="obuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
        </blockdef>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_6">
            <blockpin name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_7">
            <blockpin name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_8">
            <blockpin name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_13">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_14">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_15">
            <blockpin signalname="XLXN_13" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_16">
            <blockpin signalname="XLXN_14" name="I" />
            <blockpin name="O" />
        </block>
        <block symbolname="obuf" name="XLXI_17">
            <blockpin signalname="XLXN_15" name="I" />
            <blockpin name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1">
            <wire x2="320" y1="384" y2="528" x1="320" />
            <wire x2="784" y1="528" y2="528" x1="320" />
            <wire x2="320" y1="528" y2="848" x1="320" />
            <wire x2="320" y1="848" y2="1072" x1="320" />
            <wire x2="784" y1="1072" y2="1072" x1="320" />
            <wire x2="784" y1="848" y2="848" x1="320" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="480" y1="384" y2="592" x1="480" />
            <wire x2="784" y1="592" y2="592" x1="480" />
            <wire x2="480" y1="592" y2="912" x1="480" />
            <wire x2="784" y1="912" y2="912" x1="480" />
            <wire x2="480" y1="912" y2="1136" x1="480" />
            <wire x2="784" y1="1136" y2="1136" x1="480" />
        </branch>
        <instance x="288" y="160" name="XLXI_6" orien="R90" />
        <instance x="448" y="160" name="XLXI_7" orien="R90" />
        <instance x="608" y="160" name="XLXI_8" orien="R90" />
        <instance x="784" y="656" name="XLXI_1" orien="R0" />
        <instance x="1120" y="688" name="XLXI_2" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1120" y1="560" y2="560" x1="1040" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="640" y1="384" y2="720" x1="640" />
            <wire x2="1072" y1="720" y2="720" x1="640" />
            <wire x2="640" y1="720" y2="1264" x1="640" />
            <wire x2="1120" y1="1264" y2="1264" x1="640" />
            <wire x2="1072" y1="624" y2="720" x1="1072" />
            <wire x2="1120" y1="624" y2="624" x1="1072" />
            <wire x2="1120" y1="1168" y2="1264" x1="1120" />
        </branch>
        <instance x="784" y="976" name="XLXI_12" orien="R0" />
        <instance x="784" y="1200" name="XLXI_14" orien="R0" />
        <instance x="1120" y="1232" name="XLXI_13" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1120" y1="1104" y2="1104" x1="1040" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1376" y1="880" y2="880" x1="1040" />
        </branch>
        <instance x="1376" y="1008" name="XLXI_15" orien="R0" />
        <branch name="XLXN_13">
            <wire x2="1376" y1="944" y2="1136" x1="1376" />
        </branch>
        <instance x="1728" y="624" name="XLXI_16" orien="R0" />
        <instance x="1728" y="944" name="XLXI_17" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1728" y1="592" y2="592" x1="1376" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1728" y1="912" y2="912" x1="1632" />
        </branch>
        <text style="fontsize:32;fontname:Arial" x="1864" y="872">Cout</text>
        <text style="fontsize:32;fontname:Arial" x="1884" y="544">S</text>
        <text style="fontsize:32;fontname:Arial" x="312" y="112">A</text>
        <text style="fontsize:32;fontname:Arial" x="472" y="108">B</text>
        <text style="fontsize:32;fontname:Arial" x="616" y="112">Cin</text>
    </sheet>
</drawing>