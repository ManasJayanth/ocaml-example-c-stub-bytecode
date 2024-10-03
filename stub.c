#include <caml/mlvalues.h>

CAMLprim value caml_add(value a, value b)
{
  int x = Int_val(a), y = Int_val(b);
  return Val_int(x + y);
}
