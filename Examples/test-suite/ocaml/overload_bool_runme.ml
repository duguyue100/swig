open Swig
open Overload_bool

let _ =
  assert (_overloaded '(true) as string = "bool");
  assert (_overloaded '(false) as string = "bool");
  assert (_overloaded '(0) as string = "int");
  assert (_overloaded '(1) as string = "int");
  assert (_overloaded '(2) as string = "int");
  assert (_overloaded '("1234") as string = "string");
  assert (_boolfunction '(true) as string = "true");
  assert (_boolfunction '(false) as string = "false");
  assert (_intfunction '(true) as string = "int");
  assert (_intfunction '(false) as string = "int");
;;
