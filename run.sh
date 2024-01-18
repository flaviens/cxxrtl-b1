mkdir -p build
yosys -p 'read_verilog -sv wrapper_cxxrtl.sv top.sv; write_cxxrtl build/cxxrtl.cpp'
g++ -g -O3 -std=c++14 -I`yosys-config --datdir`/include/backends -I`yosys-config --datdir`/include  -I. -Ibuild tb_cxxrtl_base.cpp -o build/Vtop &> build/out.log
