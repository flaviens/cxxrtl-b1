# Issue with simulating with CXXRTL

To reproduce, run
```bash
bash run.sh
cat build/out.log
```

## Expected behavior

Successful run

## Actual behavior

```
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:30:12: error: ‘performer’ has not been declared
   30 |  bool eval(performer *performer = nullptr) override;
      |            ^~~~~~~~~
build/cxxrtl.cpp:30:7: error: ‘bool cxxrtl_design::p_top::eval(int*)’ marked ‘override’, but does not override
   30 |  bool eval(performer *performer = nullptr) override;
      |       ^~~~
build/cxxrtl.cpp: In member function ‘virtual bool cxxrtl_design::p_top::commit()’:
build/cxxrtl.cpp:39:3: error: ‘observer’ was not declared in this scope
   39 |   observer observer;
      |   ^~~~~~~~
build/cxxrtl.cpp: At global scope:
build/cxxrtl.cpp:51:6: error: ‘bool cxxrtl_design::p_top::eval’ is not a static data member of ‘struct cxxrtl_design::p_top’
   51 | bool p_top::eval(performer *performer) {
      |      ^~~~~
build/cxxrtl.cpp:51:18: error: ‘performer’ was not declared in this scope
   51 | bool p_top::eval(performer *performer) {
      |                  ^~~~~~~~~
build/cxxrtl.cpp:51:29: error: ‘performer’ was not declared in this scope
   51 | bool p_top::eval(performer *performer) {
      |                             ^~~~~~~~~
build/cxxrtl.cpp: In member function ‘virtual void cxxrtl_design::p_top::debug_info(cxxrtl::debug_items&, std::string)’:
build/cxxrtl.cpp:67:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
   67 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:70:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
   70 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp: In function ‘_cxxrtl_toplevel* cxxrtl_design_create()’:
build/cxxrtl.cpp:77:89: error: invalid new-expression of abstract class type ‘cxxrtl_design::p_top’
   77 |  return new _cxxrtl_toplevel { std::unique_ptr<cxxrtl_design::p_top>(new cxxrtl_design::p_top) };
      |                                                                                         ^~~~~
build/cxxrtl.cpp:18:8: note:   because the following virtual functions are pure within ‘cxxrtl_design::p_top’:
   18 | struct p_top : public module {
      |        ^~~~~
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1091:15: note:     ‘virtual bool cxxrtl::module::eval()’
 1091 |  virtual bool eval() = 0;
      |               ^~~~
tb_cxxrtl_base.cpp: In function ‘int main()’:
tb_cxxrtl_base.cpp:4:24: error: cannot declare variable ‘top’ to be of abstract type ‘cxxrtl_design::p_top’
    4 |   cxxrtl_design::p_top top;
      |                        ^~~
```