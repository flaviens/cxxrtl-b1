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
build/cxxrtl.cpp:81:12: error: ‘performer’ has not been declared
   81 |  bool eval(performer *performer = nullptr) override;
      |            ^~~~~~~~~
build/cxxrtl.cpp:81:7: error: ‘bool cxxrtl_design::p_wrapper__cxxrtl::eval(int*)’ marked ‘override’, but does not override
   81 |  bool eval(performer *performer = nullptr) override;
      |       ^~~~
build/cxxrtl.cpp: In member function ‘virtual bool cxxrtl_design::p_wrapper__cxxrtl::commit()’:
build/cxxrtl.cpp:94:3: error: ‘observer’ was not declared in this scope
   94 |   observer observer;
      |   ^~~~~~~~
build/cxxrtl.cpp: At global scope:
build/cxxrtl.cpp:107:6: error: ‘bool cxxrtl_design::p_wrapper__cxxrtl::eval’ is not a static data member of ‘struct cxxrtl_design::p_wrapper__cxxrtl’
  107 | bool p_wrapper__cxxrtl::eval(performer *performer) {
      |      ^~~~~~~~~~~~~~~~~
build/cxxrtl.cpp:107:30: error: ‘performer’ was not declared in this scope
  107 | bool p_wrapper__cxxrtl::eval(performer *performer) {
      |                              ^~~~~~~~~
build/cxxrtl.cpp:107:41: error: ‘performer’ was not declared in this scope
  107 | bool p_wrapper__cxxrtl::eval(performer *performer) {
      |                                         ^~~~~~~~~
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp: In member function ‘virtual void cxxrtl_design::p_wrapper__cxxrtl::debug_info(cxxrtl::debug_items&, std::string)’:
build/cxxrtl.cpp:222:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  222 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:225:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  225 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:228:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  228 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:231:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  231 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:234:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  234 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:237:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  237 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:240:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  240 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:243:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  243 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:246:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  246 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:249:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  249 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:252:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  252 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:255:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  255 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:258:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  258 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:261:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  261 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:264:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  264 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:267:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  267 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:270:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  270 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:273:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  273 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:276:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  276 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:279:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  279 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:282:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  282 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:285:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  285 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:288:4: error: no matching function for call to ‘cxxrtl::debug_items::add(std::__cxx11::basic_string<char>, cxxrtl::debug_item, cxxrtl::metadata_map)’
  288 |  }));
      |    ^
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note: candidate: ‘void cxxrtl::debug_items::add(const string&, cxxrtl::debug_item&&)’
 1042 |  void add(const std::string &name, debug_item &&item) {
      |       ^~~
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1042:7: note:   candidate expects 2 arguments, 3 provided
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp: In function ‘_cxxrtl_toplevel* cxxrtl_design_create()’:
build/cxxrtl.cpp:295:101: error: invalid new-expression of abstract class type ‘cxxrtl_design::p_wrapper__cxxrtl’
  295 |  return new _cxxrtl_toplevel { std::unique_ptr<cxxrtl_design::p_wrapper__cxxrtl>(new cxxrtl_design::p_wrapper__cxxrtl) };
      |                                                                                                     ^~~~~~~~~~~~~~~~~
In file included from tb_cxxrtl_base.cpp:1:
build/cxxrtl.cpp:18:8: note:   because the following virtual functions are pure within ‘cxxrtl_design::p_wrapper__cxxrtl’:
   18 | struct p_wrapper__cxxrtl : public module {
      |        ^~~~~~~~~~~~~~~~~
In file included from build/cxxrtl.cpp:1,
                 from tb_cxxrtl_base.cpp:1:
/some/path/share/yosys/include/backends/cxxrtl/cxxrtl.h:1091:15: note:     ‘virtual bool cxxrtl::module::eval()’
 1091 |  virtual bool eval() = 0;
      |               ^~~~
tb_cxxrtl_base.cpp: In function ‘int main()’:
tb_cxxrtl_base.cpp:4:36: error: cannot declare variable ‘top’ to be of abstract type ‘cxxrtl_design::p_wrapper__cxxrtl’
    4 |   cxxrtl_design::p_wrapper__cxxrtl top;
      |                                    ^~~

```