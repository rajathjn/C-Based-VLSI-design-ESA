<project xmlns="com.autoesl.autopilot.project" name="c_to_rtl" top="eq">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../C_code/test.c" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="C_code/eq.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="C_code/eq.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="sol" status="active"/>
    </solutions>
</project>

