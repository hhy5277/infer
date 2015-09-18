(*
 * Copyright (c) 2013 - present Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *)

val get_builtin_objc_typename :  [< `ObjCClass | `ObjCId ] -> Sil.typename

val get_builtin_objc_type : [< `ObjCClass | `ObjCId ] -> Sil.typ

val sil_type_of_builtin_type_kind : Clang_ast_t.builtin_type_kind -> Sil.typ

val qual_type_to_sil_type : (Sil.tenv -> string option -> Clang_ast_t.decl -> Sil.typ) ->
  Sil.tenv -> Clang_ast_t.qual_type -> Sil.typ