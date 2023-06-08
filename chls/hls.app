<project xmlns="com.autoesl.autopilot.project" name="chls" top="top_module" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="10">
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="chls/sub_modules.cpp" sc="0" tb="false" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include" csimflags="" blackbox="false"/>
        <file name="chls/sub_modules.hpp" sc="0" tb="false" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include" csimflags="" blackbox="false"/>
        <file name="chls/top_module.cpp" sc="0" tb="false" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include" csimflags="" blackbox="false"/>
        <file name="chls/top_module.hpp" sc="0" tb="false" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include" csimflags="" blackbox="false"/>
        <file name="../header.h" sc="0" tb="1" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../image.h" sc="0" tb="1" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
        <file name="../test_bench.cpp" sc="0" tb="1" cflags="-I/home/arthur/Vitis_Libraries/security/L1/include -Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

