let sample2 = """
(source_file "sample2.swift"
  (import_decl range=[sample2.swift:1:1 - line:1:8] 'UIKit')
  (class_decl range=[sample2.swift:3:1 - line:20:1] "AAA" interface type='AAA.Type' access=internal @objc non-resilient inherits: UIViewController
    (pattern_binding_decl range=[sample2.swift:4:5 - line:4:24]
      (pattern_typed type='(() -> Void)?'
        (pattern_named type='(() -> Void)?' 'a')
)
      (dot_syntax_call_expr implicit type='(() -> Void)?' nothrow
        (declref_expr implicit type='((() -> Void)?.Type) -> (() -> Void)?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> (() -> Void)))] function_ref=unapplied)
        (type_expr implicit type='(() -> Void)?.Type' typerepr='<<NULL>>')))
    (var_decl range=[sample2.swift:4:9 - line:4:9] "a" type='(() -> Void)?' interface type='(() -> Void)?' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[sample2.swift:4:9 - line:4:9] 'anonname=0x7fda24b52928' interface type='(AAA) -> () -> (() -> Void)?' access=internal get_for=a
        (parameter "self" interface type='AAA')
        (parameter_list)
        (brace_stmt implicit range=[sample2.swift:4:9 - line:4:9]
          (return_stmt implicit
            (load_expr implicit type='(() -> Void)?'
              (member_ref_expr implicit type='@lvalue (() -> Void)?' decl=sample2.(file).AAA.a@sample2.swift:4:9 direct_to_storage
                (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:4:9 function_ref=unapplied))))))
      (accessor_decl implicit range=[sample2.swift:4:9 - line:4:9] 'anonname=0x7fda24b52b10' interface type='(AAA) -> ((() -> Void)?) -> ()' access=internal set_for=a
        (parameter "self" interface type='AAA')
        (parameter_list
          (parameter "value" interface type='(() -> Void)?') range=[sample2.swift:4:9 - line:4:9])
        (brace_stmt implicit range=[sample2.swift:4:9 - line:4:9]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue (() -> Void)?' decl=sample2.(file).AAA.a@sample2.swift:4:9 direct_to_storage
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:4:9 function_ref=unapplied))
            (declref_expr implicit type='(() -> Void)?' decl=sample2.(file).AAA.<anonymous>.value@sample2.swift:4:9 function_ref=unapplied))))
      (accessor_decl implicit range=[sample2.swift:4:9 - line:4:9] 'anonname=0x7fda24b53328' interface type='(AAA) -> () -> ()' access=internal _modify_for=a
        (parameter "self" interface type='AAA')
        (parameter_list)
        (brace_stmt implicit range=[sample2.swift:4:9 - line:4:9]
          (yield_stmt implicit range=[sample2.swift:4:9 - line:4:9]
            (inout_expr implicit type='inout (() -> Void)?'
              (member_ref_expr implicit type='@lvalue (() -> Void)?' decl=sample2.(file).AAA.a@sample2.swift:4:9 direct_to_impl
                (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:4:9 function_ref=unapplied)))))))
    (accessor_decl implicit range=[sample2.swift:4:9 - line:4:9] 'anonname=0x7fda24b52928' interface type='(AAA) -> () -> (() -> Void)?' access=internal get_for=a
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:4:9 - line:4:9]
        (return_stmt implicit
          (load_expr implicit type='(() -> Void)?'
            (member_ref_expr implicit type='@lvalue (() -> Void)?' decl=sample2.(file).AAA.a@sample2.swift:4:9 direct_to_storage
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:4:9 function_ref=unapplied))))))
    (accessor_decl implicit range=[sample2.swift:4:9 - line:4:9] 'anonname=0x7fda24b52b10' interface type='(AAA) -> ((() -> Void)?) -> ()' access=internal set_for=a
      (parameter "self" interface type='AAA')
      (parameter_list
        (parameter "value" interface type='(() -> Void)?') range=[sample2.swift:4:9 - line:4:9])
      (brace_stmt implicit range=[sample2.swift:4:9 - line:4:9]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue (() -> Void)?' decl=sample2.(file).AAA.a@sample2.swift:4:9 direct_to_storage
            (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:4:9 function_ref=unapplied))
          (declref_expr implicit type='(() -> Void)?' decl=sample2.(file).AAA.<anonymous>.value@sample2.swift:4:9 function_ref=unapplied))))
    (accessor_decl implicit range=[sample2.swift:4:9 - line:4:9] 'anonname=0x7fda24b53328' interface type='(AAA) -> () -> ()' access=internal _modify_for=a
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:4:9 - line:4:9]
        (yield_stmt implicit range=[sample2.swift:4:9 - line:4:9]
          (inout_expr implicit type='inout (() -> Void)?'
            (member_ref_expr implicit type='@lvalue (() -> Void)?' decl=sample2.(file).AAA.a@sample2.swift:4:9 direct_to_impl
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:4:9 function_ref=unapplied))))))
    (pattern_binding_decl range=[sample2.swift:5:5 - line:5:18]
      (pattern_typed type='Int'
        (pattern_named type='Int' 'b')
        (type_ident
          (component id='Int' bind=Swift.(file).Int)))
      (integer_literal_expr type='Int' location=sample2.swift:5:18 range=[sample2.swift:5:18 - line:5:18] value=0 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**))
    (var_decl range=[sample2.swift:5:9 - line:5:9] "b" type='Int' interface type='Int' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[sample2.swift:5:9 - line:5:9] 'anonname=0x7fda24b9d150' interface type='(AAA) -> () -> Int' access=internal get_for=b
        (parameter "self" interface type='AAA')
        (parameter_list)
        (brace_stmt implicit range=[sample2.swift:5:9 - line:5:9]
          (return_stmt implicit
            (load_expr implicit type='Int'
              (member_ref_expr implicit type='@lvalue Int' decl=sample2.(file).AAA.b@sample2.swift:5:9 direct_to_storage
                (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:5:9 function_ref=unapplied))))))
      (accessor_decl implicit range=[sample2.swift:5:9 - line:5:9] 'anonname=0x7fda24b9d338' interface type='(AAA) -> (Int) -> ()' access=internal set_for=b
        (parameter "self" interface type='AAA')
        (parameter_list
          (parameter "value" interface type='Int') range=[sample2.swift:5:9 - line:5:9])
        (brace_stmt implicit range=[sample2.swift:5:9 - line:5:9]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue Int' decl=sample2.(file).AAA.b@sample2.swift:5:9 direct_to_storage
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:5:9 function_ref=unapplied))
            (declref_expr implicit type='Int' decl=sample2.(file).AAA.<anonymous>.value@sample2.swift:5:9 function_ref=unapplied))))
      (accessor_decl implicit range=[sample2.swift:5:9 - line:5:9] 'anonname=0x7fda24b9d440' interface type='(AAA) -> () -> ()' access=internal _modify_for=b
        (parameter "self" interface type='AAA')
        (parameter_list)
        (brace_stmt implicit range=[sample2.swift:5:9 - line:5:9]
          (yield_stmt implicit range=[sample2.swift:5:9 - line:5:9]
            (inout_expr implicit type='inout Int'
              (member_ref_expr implicit type='@lvalue Int' decl=sample2.(file).AAA.b@sample2.swift:5:9 direct_to_impl
                (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:5:9 function_ref=unapplied)))))))
    (accessor_decl implicit range=[sample2.swift:5:9 - line:5:9] 'anonname=0x7fda24b9d150' interface type='(AAA) -> () -> Int' access=internal get_for=b
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:5:9 - line:5:9]
        (return_stmt implicit
          (load_expr implicit type='Int'
            (member_ref_expr implicit type='@lvalue Int' decl=sample2.(file).AAA.b@sample2.swift:5:9 direct_to_storage
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:5:9 function_ref=unapplied))))))
    (accessor_decl implicit range=[sample2.swift:5:9 - line:5:9] 'anonname=0x7fda24b9d338' interface type='(AAA) -> (Int) -> ()' access=internal set_for=b
      (parameter "self" interface type='AAA')
      (parameter_list
        (parameter "value" interface type='Int') range=[sample2.swift:5:9 - line:5:9])
      (brace_stmt implicit range=[sample2.swift:5:9 - line:5:9]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue Int' decl=sample2.(file).AAA.b@sample2.swift:5:9 direct_to_storage
            (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:5:9 function_ref=unapplied))
          (declref_expr implicit type='Int' decl=sample2.(file).AAA.<anonymous>.value@sample2.swift:5:9 function_ref=unapplied))))
    (accessor_decl implicit range=[sample2.swift:5:9 - line:5:9] 'anonname=0x7fda24b9d440' interface type='(AAA) -> () -> ()' access=internal _modify_for=b
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:5:9 - line:5:9]
        (yield_stmt implicit range=[sample2.swift:5:9 - line:5:9]
          (inout_expr implicit type='inout Int'
            (member_ref_expr implicit type='@lvalue Int' decl=sample2.(file).AAA.b@sample2.swift:5:9 direct_to_impl
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:5:9 function_ref=unapplied))))))
    (pattern_binding_decl range=[sample2.swift:6:5 - line:6:21]
      (pattern_typed type='String'
        (pattern_named type='String' 'c')
        (type_ident
          (component id='String' bind=Swift.(file).String)))
      (string_literal_expr type='String' location=sample2.swift:6:21 range=[sample2.swift:6:21 - line:6:21] encoding=utf8 value="" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**))
    (var_decl range=[sample2.swift:6:9 - line:6:9] "c" type='String' interface type='String' access=internal readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[sample2.swift:6:9 - line:6:9] 'anonname=0x7fda24b9fe80' interface type='(AAA) -> () -> String' access=internal get_for=c
        (parameter "self" interface type='AAA')
        (parameter_list)
        (brace_stmt implicit range=[sample2.swift:6:9 - line:6:9]
          (return_stmt implicit
            (load_expr implicit type='String'
              (member_ref_expr implicit type='@lvalue String' decl=sample2.(file).AAA.c@sample2.swift:6:9 direct_to_storage
                (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:6:9 function_ref=unapplied))))))
      (accessor_decl implicit range=[sample2.swift:6:9 - line:6:9] 'anonname=0x7fda24ba0068' interface type='(AAA) -> (String) -> ()' access=internal set_for=c
        (parameter "self" interface type='AAA')
        (parameter_list
          (parameter "value" interface type='String') range=[sample2.swift:6:9 - line:6:9])
        (brace_stmt implicit range=[sample2.swift:6:9 - line:6:9]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue String' decl=sample2.(file).AAA.c@sample2.swift:6:9 direct_to_storage
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:6:9 function_ref=unapplied))
            (declref_expr implicit type='String' decl=sample2.(file).AAA.<anonymous>.value@sample2.swift:6:9 function_ref=unapplied))))
      (accessor_decl implicit range=[sample2.swift:6:9 - line:6:9] 'anonname=0x7fda24ba0170' interface type='(AAA) -> () -> ()' access=internal _modify_for=c
        (parameter "self" interface type='AAA')
        (parameter_list)
        (brace_stmt implicit range=[sample2.swift:6:9 - line:6:9]
          (yield_stmt implicit range=[sample2.swift:6:9 - line:6:9]
            (inout_expr implicit type='inout String'
              (member_ref_expr implicit type='@lvalue String' decl=sample2.(file).AAA.c@sample2.swift:6:9 direct_to_impl
                (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:6:9 function_ref=unapplied)))))))
    (accessor_decl implicit range=[sample2.swift:6:9 - line:6:9] 'anonname=0x7fda24b9fe80' interface type='(AAA) -> () -> String' access=internal get_for=c
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:6:9 - line:6:9]
        (return_stmt implicit
          (load_expr implicit type='String'
            (member_ref_expr implicit type='@lvalue String' decl=sample2.(file).AAA.c@sample2.swift:6:9 direct_to_storage
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:6:9 function_ref=unapplied))))))
    (accessor_decl implicit range=[sample2.swift:6:9 - line:6:9] 'anonname=0x7fda24ba0068' interface type='(AAA) -> (String) -> ()' access=internal set_for=c
      (parameter "self" interface type='AAA')
      (parameter_list
        (parameter "value" interface type='String') range=[sample2.swift:6:9 - line:6:9])
      (brace_stmt implicit range=[sample2.swift:6:9 - line:6:9]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue String' decl=sample2.(file).AAA.c@sample2.swift:6:9 direct_to_storage
            (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:6:9 function_ref=unapplied))
          (declref_expr implicit type='String' decl=sample2.(file).AAA.<anonymous>.value@sample2.swift:6:9 function_ref=unapplied))))
    (accessor_decl implicit range=[sample2.swift:6:9 - line:6:9] 'anonname=0x7fda24ba0170' interface type='(AAA) -> () -> ()' access=internal _modify_for=c
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:6:9 - line:6:9]
        (yield_stmt implicit range=[sample2.swift:6:9 - line:6:9]
          (inout_expr implicit type='inout String'
            (member_ref_expr implicit type='@lvalue String' decl=sample2.(file).AAA.c@sample2.swift:6:9 direct_to_impl
              (declref_expr implicit type='AAA' decl=sample2.(file).AAA.<anonymous>.self@sample2.swift:6:9 function_ref=unapplied))))))
    (func_decl range=[sample2.swift:8:5 - line:19:5] "abc()" interface type='(AAA) -> () -> ()' access=internal
      (parameter "self" interface type='AAA')
      (parameter_list range=[sample2.swift:8:13 - line:8:14])
      (brace_stmt range=[sample2.swift:8:16 - line:19:5]
        (pattern_binding_decl range=[sample2.swift:9:14 - line:9:26]
          (pattern_named type='AAA?' '_self')
          (inject_into_optional implicit type='AAA?' location=sample2.swift:9:26 range=[sample2.swift:9:26 - line:9:26]
            (declref_expr type='AAA' location=sample2.swift:9:26 range=[sample2.swift:9:26 - line:9:26] decl=sample2.(file).AAA.abc().self@sample2.swift:8:10 function_ref=unapplied)))

        (var_decl range=[sample2.swift:9:18 - line:9:18] "_self" type='AAA?' interface type='AAA?' access=private readImpl=stored writeImpl=stored readWriteImpl=stored)

        (assign_expr type='()' location=sample2.swift:10:16 range=[sample2.swift:10:9 - line:13:9]
          (member_ref_expr type='@lvalue (() -> Void)?' location=sample2.swift:10:14 range=[sample2.swift:10:9 - line:10:14] decl=sample2.(file).AAA.a@sample2.swift:4:9
            (declref_expr type='AAA' location=sample2.swift:10:9 range=[sample2.swift:10:9 - line:10:9] decl=sample2.(file).AAA.abc().self@sample2.swift:8:10 function_ref=unapplied))
          (inject_into_optional implicit type='(() -> Void)?' location=sample2.swift:10:18 range=[sample2.swift:10:18 - line:13:9]
            (closure_expr type='() -> Void' location=sample2.swift:10:18 range=[sample2.swift:10:18 - line:13:9] discriminator=0 captures=(self<direct>, _self<direct>) escaping
              (parameter_list range=[sample2.swift:10:18 - line:10:18])
              (brace_stmt range=[sample2.swift:10:18 - line:13:9]
                (assign_expr type='()' location=sample2.swift:11:20 range=[sample2.swift:11:13 - line:11:22]
                  (member_ref_expr type='@lvalue Int' location=sample2.swift:11:18 range=[sample2.swift:11:13 - line:11:18] decl=sample2.(file).AAA.b@sample2.swift:5:9
                    (declref_expr type='AAA' location=sample2.swift:11:13 range=[sample2.swift:11:13 - line:11:13] decl=sample2.(file).AAA.abc().self@sample2.swift:8:10 function_ref=unapplied))
                  (integer_literal_expr type='Int' location=sample2.swift:11:22 range=[sample2.swift:11:22 - line:11:22] value=11 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**))
                (optional_evaluation_expr implicit type='()?' location=sample2.swift:12:22 range=[sample2.swift:12:13 - line:12:24]
                  (inject_into_optional implicit type='()?' location=sample2.swift:12:22 range=[sample2.swift:12:13 - line:12:24]
                    (assign_expr type='()' location=sample2.swift:12:22 range=[sample2.swift:12:13 - line:12:24]
                      (member_ref_expr type='@lvalue String' location=sample2.swift:12:20 range=[sample2.swift:12:13 - line:12:20] decl=sample2.(file).AAA.c@sample2.swift:6:9
                        (load_expr implicit type='AAA' location=sample2.swift:12:18 range=[sample2.swift:12:13 - line:12:18]
                          (bind_optional_expr type='@lvalue AAA' location=sample2.swift:12:18 range=[sample2.swift:12:13 - line:12:18] depth=0
                            (declref_expr type='@lvalue AAA?' location=sample2.swift:12:13 range=[sample2.swift:12:13 - line:12:13] decl=sample2.(file).AAA.abc()._self@sample2.swift:9:18 function_ref=unapplied))))
                      (string_literal_expr type='String' location=sample2.swift:12:24 range=[sample2.swift:12:24 - line:12:24] encoding=utf8 value="aa" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**))))))))
        (assign_expr type='()' location=sample2.swift:15:16 range=[sample2.swift:15:9 - line:18:9]
          (member_ref_expr type='@lvalue (() -> Void)?' location=sample2.swift:15:14 range=[sample2.swift:15:9 - line:15:14] decl=sample2.(file).AAA.a@sample2.swift:4:9
            (declref_expr type='AAA' location=sample2.swift:15:9 range=[sample2.swift:15:9 - line:15:9] decl=sample2.(file).AAA.abc().self@sample2.swift:8:10 function_ref=unapplied))
          (inject_into_optional implicit type='(() -> Void)?' location=sample2.swift:15:18 range=[sample2.swift:15:18 - line:18:9]
            (capture_list type='() -> Void' location=sample2.swift:15:18 range=[sample2.swift:15:18 - line:18:9]
                (var_decl range=[sample2.swift:15:26 - line:15:26] "self" type='AAA?' interface type='AAA?' access=private readImpl=stored writeImpl=stored readWriteImpl=stored)
                (pattern_binding_decl range=[sample2.swift:15:26 - line:15:26]
                  (pattern_named implicit type='AAA?' 'self')
                  (inject_into_optional implicit type='AAA?' location=sample2.swift:15:26 range=[sample2.swift:15:26 - line:15:26]
                    (declref_expr type='AAA' location=sample2.swift:15:26 range=[sample2.swift:15:26 - line:15:26] decl=sample2.(file).AAA.abc().self@sample2.swift:8:10 function_ref=unapplied)))
              (closure_expr type='() -> Void' location=sample2.swift:15:18 range=[sample2.swift:15:18 - line:18:9] discriminator=1 captures=(self<direct>) escaping
                (parameter_list range=[sample2.swift:15:18 - line:15:18])
                (brace_stmt range=[sample2.swift:15:18 - line:18:9]
                  (optional_evaluation_expr implicit type='()?' location=sample2.swift:16:21 range=[sample2.swift:16:13 - line:16:23]
                    (inject_into_optional implicit type='()?' location=sample2.swift:16:21 range=[sample2.swift:16:13 - line:16:23]
                      (assign_expr type='()' location=sample2.swift:16:21 range=[sample2.swift:16:13 - line:16:23]
                        (member_ref_expr type='@lvalue Int' location=sample2.swift:16:19 range=[sample2.swift:16:13 - line:16:19] decl=sample2.(file).AAA.b@sample2.swift:5:9
                          (load_expr implicit type='AAA' location=sample2.swift:16:17 range=[sample2.swift:16:13 - line:16:17]
                            (bind_optional_expr type='@lvalue AAA' location=sample2.swift:16:17 range=[sample2.swift:16:13 - line:16:17] depth=0
                              (declref_expr type='@lvalue AAA?' location=sample2.swift:16:13 range=[sample2.swift:16:13 - line:16:13] decl=sample2.(file).AAA.abc().self@sample2.swift:15:26 function_ref=unapplied))))
                        (integer_literal_expr type='Int' location=sample2.swift:16:23 range=[sample2.swift:16:23 - line:16:23] value=22 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**))))
                  (optional_evaluation_expr implicit type='()?' location=sample2.swift:17:21 range=[sample2.swift:17:13 - line:17:23]
                    (inject_into_optional implicit type='()?' location=sample2.swift:17:21 range=[sample2.swift:17:13 - line:17:23]
                      (assign_expr type='()' location=sample2.swift:17:21 range=[sample2.swift:17:13 - line:17:23]
                        (member_ref_expr type='@lvalue String' location=sample2.swift:17:19 range=[sample2.swift:17:13 - line:17:19] decl=sample2.(file).AAA.c@sample2.swift:6:9
                          (load_expr implicit type='AAA' location=sample2.swift:17:17 range=[sample2.swift:17:13 - line:17:17]
                            (bind_optional_expr type='@lvalue AAA' location=sample2.swift:17:17 range=[sample2.swift:17:13 - line:17:17] depth=0
                              (declref_expr type='@lvalue AAA?' location=sample2.swift:17:13 range=[sample2.swift:17:13 - line:17:13] decl=sample2.(file).AAA.abc().self@sample2.swift:15:26 function_ref=unapplied))))
                        (string_literal_expr type='String' location=sample2.swift:17:23 range=[sample2.swift:17:23 - line:17:23] encoding=utf8 value="bb" builtin_initializer=Swift.(file).String extension.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:) initializer=**NULL**)))))))))))
    (constructor_decl implicit range=[sample2.swift:3:29 - line:3:29] "init(nibName:bundle:)" interface type='(AAA.Type) -> (String?, Bundle?) -> AAA' access=internal override=UIKit.(file).UIViewController.init(nibName:bundle:) @objc dynamic designated
      (parameter "self" interface type='AAA')
      (parameter_list
        (parameter "nibNameOrNil" apiName=nibName type='String?' interface type='String?')
        (parameter "nibBundleOrNil" apiName=bundle type='Bundle?' interface type='Bundle?'))
      (brace_stmt implicit
        (rebind_self_in_constructor_expr implicit type='()'
          (call_expr implicit type='UIViewController' nothrow arg_labels=nibName:bundle:
            (dot_syntax_call_expr implicit type='(String?, Bundle?) -> UIViewController' super nothrow
              (other_constructor_ref_expr implicit type='(UIViewController) -> (String?, Bundle?) -> UIViewController' decl=UIKit.(file).UIViewController.init(nibName:bundle:))
              (super_ref_expr implicit type='UIViewController'))
            (tuple_expr implicit type='(nibName: String?, bundle: Bundle?)' names=nibName,bundle
              (declref_expr implicit type='String?' decl=sample2.(file).AAA.init(nibName:bundle:).nibNameOrNil function_ref=unapplied)
              (declref_expr implicit type='Bundle?' decl=sample2.(file).AAA.init(nibName:bundle:).nibBundleOrNil function_ref=unapplied))))
        (return_stmt implicit)))
    (constructor_decl implicit range=[sample2.swift:3:29 - line:3:29] "init(coder:)" interface type='(AAA.Type) -> (NSCoder) -> AAA?' access=internal override=UIKit.(file).UIViewController.init(coder:) @objc dynamic required designated failable=Optional
      (parameter "self" interface type='AAA')
      (parameter_list
        (parameter "coder" apiName=coder type='NSCoder' interface type='NSCoder'))
      (brace_stmt implicit
        (rebind_self_in_constructor_expr implicit type='()'
          (call_expr implicit type='UIViewController?' nothrow arg_labels=coder:
            (dot_syntax_call_expr implicit type='(NSCoder) -> UIViewController?' super nothrow
              (other_constructor_ref_expr implicit type='(UIViewController) -> (NSCoder) -> UIViewController?' decl=UIKit.(file).UIViewController.init(coder:))
              (super_ref_expr implicit type='UIViewController'))
            (tuple_expr implicit type='(coder: NSCoder)' names=coder
              (declref_expr implicit type='NSCoder' decl=sample2.(file).AAA.init(coder:).coder function_ref=unapplied))))
        (return_stmt implicit)))
    (destructor_decl implicit range=[sample2.swift:3:7 - line:3:7] "deinit" interface type='(AAA) -> () -> ()' access=internal @objc
      (parameter "self" interface type='AAA')
      (parameter_list)
      (brace_stmt implicit range=[sample2.swift:3:7 - line:3:7]))))
"""
