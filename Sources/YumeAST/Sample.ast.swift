let sample = """
(source_file "/Users/yume/git/TypeFill/example/sample.swift"
  (import_decl range=[/Users/yume/git/TypeFill/example/sample.swift:1:1 - line:1:8] 'UIKit')
  (top_level_code_decl range=[/Users/yume/git/TypeFill/example/sample.swift:2:1 - line:2:9]
    (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:2:1 - line:2:9]
      (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:2:1 - line:2:9]
        (pattern_named type='Int' 'a')
        (integer_literal_expr type='Int' location=/Users/yume/git/TypeFill/example/sample.swift:2:9 range=[/Users/yume/git/TypeFill/example/sample.swift:2:9 - line:2:9] value=1 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**))
))
  (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:2:5 - line:2:5] "a" type='Int' interface type='Int' access=internal let readImpl=stored immutable)
  (class_decl range=[/Users/yume/git/TypeFill/example/sample.swift:3:1 - line:34:1] "A" interface type='A.Type' access=internal @objc non-resilient inherits: UIViewController
    (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:4:25 - line:4:43]
      (pattern_typed type='UIButton?'
        (pattern_named type='UIButton?' 'btn1')
)
      (dot_syntax_call_expr implicit type='UIButton?' nothrow
        (declref_expr implicit type='(UIButton?.Type) -> UIButton?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> UIButton))] function_ref=unapplied)
        (type_expr implicit type='UIButton?.Type' typerepr='<<NULL>>')))
    (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] "btn1" type='UIButton?' interface type='UIButton?' access=open @objc readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] 'anonname=0x7fb468c8db70' interface type='(A) -> () -> UIButton?' access=open @objc get_for=btn1
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
          (return_stmt implicit
            (load_expr implicit type='UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn1@/Users/yume/git/TypeFill/example/sample.swift:4:29 direct_to_storage
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] 'anonname=0x7fb468c8dd58' interface type='(A) -> (UIButton?) -> ()' access=open @objc set_for=btn1
        (parameter "self" interface type='A')
        (parameter_list
          (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29])
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn1@/Users/yume/git/TypeFill/example/sample.swift:4:29 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))
            (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] 'anonname=0x7fb468c90120' interface type='(A) -> () -> ()' access=open _modify_for=btn1
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
          (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
            (inout_expr implicit type='inout UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn1@/Users/yume/git/TypeFill/example/sample.swift:4:29 direct_to_impl
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied)))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] 'anonname=0x7fb468c8db70' interface type='(A) -> () -> UIButton?' access=open @objc get_for=btn1
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
        (return_stmt implicit
          (load_expr implicit type='UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn1@/Users/yume/git/TypeFill/example/sample.swift:4:29 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] 'anonname=0x7fb468c8dd58' interface type='(A) -> (UIButton?) -> ()' access=open @objc set_for=btn1
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29])
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn1@/Users/yume/git/TypeFill/example/sample.swift:4:29 direct_to_storage
            (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))
          (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29] 'anonname=0x7fb468c90120' interface type='(A) -> () -> ()' access=open _modify_for=btn1
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
        (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:4:29 - line:4:29]
          (inout_expr implicit type='inout UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn1@/Users/yume/git/TypeFill/example/sample.swift:4:29 direct_to_impl
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:4:29 function_ref=unapplied))))))
    (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:5:27 - line:5:45]
      (pattern_typed type='UIButton?'
        (pattern_named type='UIButton?' 'btn2')
)
      (dot_syntax_call_expr implicit type='UIButton?' nothrow
        (declref_expr implicit type='(UIButton?.Type) -> UIButton?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> UIButton))] function_ref=unapplied)
        (type_expr implicit type='UIButton?.Type' typerepr='<<NULL>>')))
    (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] "btn2" type='UIButton?' interface type='UIButton?' access=public @objc readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] 'anonname=0x7fb468c92198' interface type='(A) -> () -> UIButton?' access=public @objc get_for=btn2
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
          (return_stmt implicit
            (load_expr implicit type='UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn2@/Users/yume/git/TypeFill/example/sample.swift:5:31 direct_to_storage
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] 'anonname=0x7fb468c92380' interface type='(A) -> (UIButton?) -> ()' access=public @objc set_for=btn2
        (parameter "self" interface type='A')
        (parameter_list
          (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31])
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn2@/Users/yume/git/TypeFill/example/sample.swift:5:31 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))
            (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] 'anonname=0x7fb468c92488' interface type='(A) -> () -> ()' access=public _modify_for=btn2
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
          (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
            (inout_expr implicit type='inout UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn2@/Users/yume/git/TypeFill/example/sample.swift:5:31 direct_to_impl
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied)))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] 'anonname=0x7fb468c92198' interface type='(A) -> () -> UIButton?' access=public @objc get_for=btn2
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
        (return_stmt implicit
          (load_expr implicit type='UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn2@/Users/yume/git/TypeFill/example/sample.swift:5:31 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] 'anonname=0x7fb468c92380' interface type='(A) -> (UIButton?) -> ()' access=public @objc set_for=btn2
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31])
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn2@/Users/yume/git/TypeFill/example/sample.swift:5:31 direct_to_storage
            (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))
          (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31] 'anonname=0x7fb468c92488' interface type='(A) -> () -> ()' access=public _modify_for=btn2
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
        (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:5:31 - line:5:31]
          (inout_expr implicit type='inout UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn2@/Users/yume/git/TypeFill/example/sample.swift:5:31 direct_to_impl
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:5:31 function_ref=unapplied))))))
    (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:6:29 - line:6:47]
      (pattern_typed type='UIButton?'
        (pattern_named type='UIButton?' 'btn3')
)
      (dot_syntax_call_expr implicit type='UIButton?' nothrow
        (declref_expr implicit type='(UIButton?.Type) -> UIButton?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> UIButton))] function_ref=unapplied)
        (type_expr implicit type='UIButton?.Type' typerepr='<<NULL>>')))
    (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] "btn3" type='UIButton?' interface type='UIButton?' access=internal @objc readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] 'anonname=0x7fb468c926c8' interface type='(A) -> () -> UIButton?' access=internal @objc get_for=btn3
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
          (return_stmt implicit
            (load_expr implicit type='UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn3@/Users/yume/git/TypeFill/example/sample.swift:6:33 direct_to_storage
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] 'anonname=0x7fb468c928b0' interface type='(A) -> (UIButton?) -> ()' access=internal @objc set_for=btn3
        (parameter "self" interface type='A')
        (parameter_list
          (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33])
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn3@/Users/yume/git/TypeFill/example/sample.swift:6:33 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))
            (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] 'anonname=0x7fb468c929b8' interface type='(A) -> () -> ()' access=internal _modify_for=btn3
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
          (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
            (inout_expr implicit type='inout UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn3@/Users/yume/git/TypeFill/example/sample.swift:6:33 direct_to_impl
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied)))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] 'anonname=0x7fb468c926c8' interface type='(A) -> () -> UIButton?' access=internal @objc get_for=btn3
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
        (return_stmt implicit
          (load_expr implicit type='UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn3@/Users/yume/git/TypeFill/example/sample.swift:6:33 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] 'anonname=0x7fb468c928b0' interface type='(A) -> (UIButton?) -> ()' access=internal @objc set_for=btn3
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33])
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn3@/Users/yume/git/TypeFill/example/sample.swift:6:33 direct_to_storage
            (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))
          (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33] 'anonname=0x7fb468c929b8' interface type='(A) -> () -> ()' access=internal _modify_for=btn3
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
        (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:6:33 - line:6:33]
          (inout_expr implicit type='inout UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn3@/Users/yume/git/TypeFill/example/sample.swift:6:33 direct_to_impl
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:6:33 function_ref=unapplied))))))
    (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:7:32 - line:7:50]
      (pattern_typed type='UIButton?'
        (pattern_named type='UIButton?' 'btn4')
)
      (dot_syntax_call_expr implicit type='UIButton?' nothrow
        (declref_expr implicit type='(UIButton?.Type) -> UIButton?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> UIButton))] function_ref=unapplied)
        (type_expr implicit type='UIButton?.Type' typerepr='<<NULL>>')))
    (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] "btn4" type='UIButton?' interface type='UIButton?' access=fileprivate @objc readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] 'anonname=0x7fb468c92bf8' interface type='(A) -> () -> UIButton?' access=fileprivate @objc get_for=btn4
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
          (return_stmt implicit
            (load_expr implicit type='UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn4@/Users/yume/git/TypeFill/example/sample.swift:7:36 direct_to_storage
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] 'anonname=0x7fb468c92de0' interface type='(A) -> (UIButton?) -> ()' access=fileprivate @objc set_for=btn4
        (parameter "self" interface type='A')
        (parameter_list
          (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36])
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn4@/Users/yume/git/TypeFill/example/sample.swift:7:36 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))
            (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] 'anonname=0x7fb468c92ee8' interface type='(A) -> () -> ()' access=fileprivate _modify_for=btn4
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
          (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
            (inout_expr implicit type='inout UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn4@/Users/yume/git/TypeFill/example/sample.swift:7:36 direct_to_impl
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied)))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] 'anonname=0x7fb468c92bf8' interface type='(A) -> () -> UIButton?' access=fileprivate @objc get_for=btn4
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
        (return_stmt implicit
          (load_expr implicit type='UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn4@/Users/yume/git/TypeFill/example/sample.swift:7:36 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] 'anonname=0x7fb468c92de0' interface type='(A) -> (UIButton?) -> ()' access=fileprivate @objc set_for=btn4
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36])
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn4@/Users/yume/git/TypeFill/example/sample.swift:7:36 direct_to_storage
            (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))
          (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36] 'anonname=0x7fb468c92ee8' interface type='(A) -> () -> ()' access=fileprivate _modify_for=btn4
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
        (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:7:36 - line:7:36]
          (inout_expr implicit type='inout UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn4@/Users/yume/git/TypeFill/example/sample.swift:7:36 direct_to_impl
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:7:36 function_ref=unapplied))))))
    (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:8:28 - line:8:46]
      (pattern_typed type='UIButton?'
        (pattern_named type='UIButton?' 'btn5')
)
      (dot_syntax_call_expr implicit type='UIButton?' nothrow
        (declref_expr implicit type='(UIButton?.Type) -> UIButton?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> UIButton))] function_ref=unapplied)
        (type_expr implicit type='UIButton?.Type' typerepr='<<NULL>>')))
    (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] "btn5" type='UIButton?' interface type='UIButton?' access=private @objc readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] 'anonname=0x7fb468c93128' interface type='(A) -> () -> UIButton?' access=private @objc get_for=btn5
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
          (return_stmt implicit
            (load_expr implicit type='UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn5@/Users/yume/git/TypeFill/example/sample.swift:8:32 direct_to_storage
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] 'anonname=0x7fb468c93310' interface type='(A) -> (UIButton?) -> ()' access=private @objc set_for=btn5
        (parameter "self" interface type='A')
        (parameter_list
          (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32])
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn5@/Users/yume/git/TypeFill/example/sample.swift:8:32 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))
            (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] 'anonname=0x7fb468c93418' interface type='(A) -> () -> ()' access=private _modify_for=btn5
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
          (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
            (inout_expr implicit type='inout UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn5@/Users/yume/git/TypeFill/example/sample.swift:8:32 direct_to_impl
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied)))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] 'anonname=0x7fb468c93128' interface type='(A) -> () -> UIButton?' access=private @objc get_for=btn5
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
        (return_stmt implicit
          (load_expr implicit type='UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn5@/Users/yume/git/TypeFill/example/sample.swift:8:32 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] 'anonname=0x7fb468c93310' interface type='(A) -> (UIButton?) -> ()' access=private @objc set_for=btn5
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32])
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn5@/Users/yume/git/TypeFill/example/sample.swift:8:32 direct_to_storage
            (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))
          (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32] 'anonname=0x7fb468c93418' interface type='(A) -> () -> ()' access=private _modify_for=btn5
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
        (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:8:32 - line:8:32]
          (inout_expr implicit type='inout UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn5@/Users/yume/git/TypeFill/example/sample.swift:8:32 direct_to_impl
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:8:32 function_ref=unapplied))))))
    (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:9:15 - line:9:33]
      (pattern_typed type='UIButton?'
        (pattern_named type='UIButton?' 'btn6')
)
      (dot_syntax_call_expr implicit type='UIButton?' nothrow
        (declref_expr implicit type='(UIButton?.Type) -> UIButton?' decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> UIButton))] function_ref=unapplied)
        (type_expr implicit type='UIButton?.Type' typerepr='<<NULL>>')))
    (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] "btn6" type='UIButton?' interface type='UIButton?' access=internal @objc readImpl=stored writeImpl=stored readWriteImpl=stored
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] 'anonname=0x7fb46884de60' interface type='(A) -> () -> UIButton?' access=internal @objc get_for=btn6
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
          (return_stmt implicit
            (load_expr implicit type='UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn6@/Users/yume/git/TypeFill/example/sample.swift:9:19 direct_to_storage
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] 'anonname=0x7fb46884e048' interface type='(A) -> (UIButton?) -> ()' access=internal @objc set_for=btn6
        (parameter "self" interface type='A')
        (parameter_list
          (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19])
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
          (assign_expr implicit type='()'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn6@/Users/yume/git/TypeFill/example/sample.swift:9:19 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))
            (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))))
      (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] 'anonname=0x7fb46884e150' interface type='(A) -> () -> ()' access=internal _modify_for=btn6
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
          (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
            (inout_expr implicit type='inout UIButton?'
              (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn6@/Users/yume/git/TypeFill/example/sample.swift:9:19 direct_to_impl
                (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied)))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] 'anonname=0x7fb46884de60' interface type='(A) -> () -> UIButton?' access=internal @objc get_for=btn6
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
        (return_stmt implicit
          (load_expr implicit type='UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn6@/Users/yume/git/TypeFill/example/sample.swift:9:19 direct_to_storage
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] 'anonname=0x7fb46884e048' interface type='(A) -> (UIButton?) -> ()' access=internal @objc set_for=btn6
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "value" interface type='UIButton?') range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19])
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
        (assign_expr implicit type='()'
          (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn6@/Users/yume/git/TypeFill/example/sample.swift:9:19 direct_to_storage
            (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))
          (declref_expr implicit type='UIButton?' decl=sample.(file).A.<anonymous>.value@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))))
    (accessor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19] 'anonname=0x7fb46884e150' interface type='(A) -> () -> ()' access=internal _modify_for=btn6
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
        (yield_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:9:19 - line:9:19]
          (inout_expr implicit type='inout UIButton?'
            (member_ref_expr implicit type='@lvalue UIButton?' decl=sample.(file).A.btn6@/Users/yume/git/TypeFill/example/sample.swift:9:19 direct_to_impl
              (declref_expr implicit type='A' decl=sample.(file).A.<anonymous>.self@/Users/yume/git/TypeFill/example/sample.swift:9:19 function_ref=unapplied))))))
    (func_decl range=[/Users/yume/git/TypeFill/example/sample.swift:10:15 - line:10:53] "numberKeyIn(_:)" interface type='(A) -> (UIButton) -> ()' access=internal @objc
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "sender" type='UIButton' interface type='UIButton') range=[/Users/yume/git/TypeFill/example/sample.swift:10:31 - line:10:50])
      (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:10:52 - line:10:53]))
    (func_decl range=[/Users/yume/git/TypeFill/example/sample.swift:11:5 - line:30:5] "test()" interface type='(A) -> () -> ()' access=internal
      (parameter "self" interface type='A')
      (parameter_list range=[/Users/yume/git/TypeFill/example/sample.swift:11:14 - line:11:15])
      (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:11:17 - line:30:5]
        (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:12:9 - line:12:25]
          (pattern_named type='Int' 'default')
          (integer_literal_expr type='Int' location=/Users/yume/git/TypeFill/example/sample.swift:12:25 range=[/Users/yume/git/TypeFill/example/sample.swift:12:25 - line:12:25] value=1 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**))

        (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:12:13 - line:12:13] "default" type='Int' interface type='Int' access=private let readImpl=stored immutable)

        (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:13:9 - line:13:29]
          (pattern_tuple type='(Int, Int)' names='',''
            (pattern_named type='Int' 'aa')
            (pattern_named type='Int' 'bb'))
          (tuple_expr type='(Int, Int)' location=/Users/yume/git/TypeFill/example/sample.swift:13:24 range=[/Users/yume/git/TypeFill/example/sample.swift:13:24 - line:13:29]
            (integer_literal_expr type='Int' location=/Users/yume/git/TypeFill/example/sample.swift:13:25 range=[/Users/yume/git/TypeFill/example/sample.swift:13:25 - line:13:25] value=1 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**)
            (integer_literal_expr type='Int' location=/Users/yume/git/TypeFill/example/sample.swift:13:28 range=[/Users/yume/git/TypeFill/example/sample.swift:13:28 - line:13:28] value=2 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**)))

        (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:13:14 - line:13:14] "aa" type='Int' interface type='Int' access=private let readImpl=stored immutable)

        (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:13:18 - line:13:18] "bb" type='Int' interface type='Int' access=private let readImpl=stored immutable)

        (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:14:9 - line:14:24]
          (pattern_typed type='Int?'
            (pattern_named type='Int?' 'ss')
)
          (dot_syntax_call_expr implicit type='Int?' location=/Users/yume/git/TypeFill/example/sample.swift:14:24 range=[/Users/yume/git/TypeFill/example/sample.swift:14:24 - line:14:24] nothrow
            (declref_expr implicit type='(Int?.Type) -> Int?' location=/Users/yume/git/TypeFill/example/sample.swift:14:24 range=[/Users/yume/git/TypeFill/example/sample.swift:14:24 - line:14:24] decl=Swift.(file).Optional.none [with (substitution_map generic_signature=<Wrapped> (substitution Wrapped -> Int))] function_ref=unapplied)
            (type_expr implicit type='Int?.Type' location=/Users/yume/git/TypeFill/example/sample.swift:14:24 range=[/Users/yume/git/TypeFill/example/sample.swift:14:24 - line:14:24] typerepr='Int?')))

        (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:14:13 - line:14:13] "ss" type='Int?' interface type='Int?' access=private let readImpl=stored immutable)

        (if_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:16:9 - line:18:9]
          (pattern
            (pattern_optional_some implicit type='Int?'
              (pattern_let implicit type='Int'
                (pattern_named type='Int' 'cc')))
            (declref_expr type='Int?' location=/Users/yume/git/TypeFill/example/sample.swift:16:21 range=[/Users/yume/git/TypeFill/example/sample.swift:16:21 - line:16:21] decl=sample.(file).A.test().ss@/Users/yume/git/TypeFill/example/sample.swift:14:13 function_ref=unapplied))
          (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:16:24 - line:18:9]
            (call_expr type='()' location=/Users/yume/git/TypeFill/example/sample.swift:17:13 range=[/Users/yume/git/TypeFill/example/sample.swift:17:13 - line:17:21] nothrow arg_labels=_:
              (declref_expr type='(Any..., String, String) -> ()' location=/Users/yume/git/TypeFill/example/sample.swift:17:13 range=[/Users/yume/git/TypeFill/example/sample.swift:17:13 - line:17:13] decl=Swift.(file).print(_:separator:terminator:) function_ref=single)
              (argument_shuffle_expr implicit type='(Any..., separator: String, terminator: String)' location=/Users/yume/git/TypeFill/example/sample.swift:17:19 range=[/Users/yume/git/TypeFill/example/sample.swift:17:18 - line:17:21] scalar_to_tuple elements=[-2, -1, -1] variadic_sources=[0] default_args_owner=Swift.(file).print(_:separator:terminator:)
                (paren_expr type='(Any)' location=/Users/yume/git/TypeFill/example/sample.swift:17:19 range=[/Users/yume/git/TypeFill/example/sample.swift:17:18 - line:17:21]
                  (erasure_expr implicit type='Any' location=/Users/yume/git/TypeFill/example/sample.swift:17:19 range=[/Users/yume/git/TypeFill/example/sample.swift:17:19 - line:17:19]
                    (declref_expr type='Int' location=/Users/yume/git/TypeFill/example/sample.swift:17:19 range=[/Users/yume/git/TypeFill/example/sample.swift:17:19 - line:17:19] decl=sample.(file).A.test().cc@/Users/yume/git/TypeFill/example/sample.swift:16:16 function_ref=unapplied)))))))
        (guard_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:20:9 - line:22:9]
          (pattern
            (pattern_optional_some implicit type='Int?'
              (pattern_let implicit type='Int'
                (pattern_named type='Int' 'dd')))
            (declref_expr type='Int?' location=/Users/yume/git/TypeFill/example/sample.swift:20:24 range=[/Users/yume/git/TypeFill/example/sample.swift:20:24 - line:20:24] decl=sample.(file).A.test().ss@/Users/yume/git/TypeFill/example/sample.swift:14:13 function_ref=unapplied))
          (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:20:32 - line:22:9]
            (return_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:21:13 - line:21:13])))
        (do_catch_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:24:9 - line:29:9]
          (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:24:12 - line:27:9]
            (try_expr type='()' location=/Users/yume/git/TypeFill/example/sample.swift:25:22 range=[/Users/yume/git/TypeFill/example/sample.swift:25:13 - line:25:28]
              (call_expr type='()' location=/Users/yume/git/TypeFill/example/sample.swift:25:22 range=[/Users/yume/git/TypeFill/example/sample.swift:25:17 - line:25:28] throws arg_labels=
                (dot_syntax_call_expr type='() throws -> ()' location=/Users/yume/git/TypeFill/example/sample.swift:25:22 range=[/Users/yume/git/TypeFill/example/sample.swift:25:17 - line:25:22] nothrow
                  (declref_expr type='(A) -> () throws -> ()' location=/Users/yume/git/TypeFill/example/sample.swift:25:22 range=[/Users/yume/git/TypeFill/example/sample.swift:25:22 - line:25:22] decl=sample.(file).A.error()@/Users/yume/git/TypeFill/example/sample.swift:32:10 function_ref=single)
                  (declref_expr type='A' location=/Users/yume/git/TypeFill/example/sample.swift:25:17 range=[/Users/yume/git/TypeFill/example/sample.swift:25:17 - line:25:17] decl=sample.(file).A.test().self@/Users/yume/git/TypeFill/example/sample.swift:11:10 function_ref=unapplied))
                (tuple_expr type='()' location=/Users/yume/git/TypeFill/example/sample.swift:25:27 range=[/Users/yume/git/TypeFill/example/sample.swift:25:27 - line:25:28])))
            (pattern_binding_decl range=[/Users/yume/git/TypeFill/example/sample.swift:26:13 - line:26:23]
              (pattern_named type='A' 'a')
              (covariant_return_conversion_expr implicit type='A' location=/Users/yume/git/TypeFill/example/sample.swift:26:21 range=[/Users/yume/git/TypeFill/example/sample.swift:26:21 - line:26:23]
                (call_expr type='UIViewController' location=/Users/yume/git/TypeFill/example/sample.swift:26:21 range=[/Users/yume/git/TypeFill/example/sample.swift:26:21 - line:26:23] nothrow arg_labels=
                  (constructor_ref_call_expr implicit type='() -> UIViewController' location=/Users/yume/git/TypeFill/example/sample.swift:26:21 range=[/Users/yume/git/TypeFill/example/sample.swift:26:21 - line:26:21] nothrow
                    (declref_expr implicit type='(UIViewController.Type) -> () -> UIViewController' location=/Users/yume/git/TypeFill/example/sample.swift:26:21 range=[/Users/yume/git/TypeFill/example/sample.swift:26:21 - line:26:21] decl=UIKit.(file).UIViewController.init() function_ref=single)
                    (metatype_conversion_expr implicit type='UIViewController.Type' location=/Users/yume/git/TypeFill/example/sample.swift:26:21 range=[/Users/yume/git/TypeFill/example/sample.swift:26:21 - line:26:21]
                      (type_expr type='A.Type' location=/Users/yume/git/TypeFill/example/sample.swift:26:21 range=[/Users/yume/git/TypeFill/example/sample.swift:26:21 - line:26:21] typerepr='A')))
                  (tuple_expr type='()' location=/Users/yume/git/TypeFill/example/sample.swift:26:22 range=[/Users/yume/git/TypeFill/example/sample.swift:26:22 - line:26:23]))))

            (var_decl range=[/Users/yume/git/TypeFill/example/sample.swift:26:17 - line:26:17] "a" type='A' interface type='A' access=private let readImpl=stored immutable)
)
          (catch range=[/Users/yume/git/TypeFill/example/sample.swift:27:11 - line:29:9]
            (pattern_let implicit type='Error'
              (pattern_named type='Error' 'error'))
            (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:27:17 - line:29:9]
              (call_expr type='()' location=/Users/yume/git/TypeFill/example/sample.swift:28:13 range=[/Users/yume/git/TypeFill/example/sample.swift:28:13 - line:28:24] nothrow arg_labels=_:
                (declref_expr type='(Any..., String, String) -> ()' location=/Users/yume/git/TypeFill/example/sample.swift:28:13 range=[/Users/yume/git/TypeFill/example/sample.swift:28:13 - line:28:13] decl=Swift.(file).print(_:separator:terminator:) function_ref=single)
                (argument_shuffle_expr implicit type='(Any..., separator: String, terminator: String)' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:18 - line:28:24] scalar_to_tuple elements=[-2, -1, -1] variadic_sources=[0] default_args_owner=Swift.(file).print(_:separator:terminator:)
                  (paren_expr type='(Any)' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:18 - line:28:24]
                    (open_existential_expr implicit type='Any' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:19 - line:28:19]
                      (opaque_value_expr implicit type='Error' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:19 - line:28:19] @ 0x7fb46885c918)
                      (declref_expr type='Error' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:19 - line:28:19] decl=sample.(file).A.test().error@/Users/yume/git/TypeFill/example/sample.swift:27:17 function_ref=unapplied)
                      (erasure_expr implicit type='Any' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:19 - line:28:19]
                        (opaque_value_expr implicit type='Error' location=/Users/yume/git/TypeFill/example/sample.swift:28:19 range=[/Users/yume/git/TypeFill/example/sample.swift:28:19 - line:28:19] @ 0x7fb46885c918)))))))))))
    (func_decl range=[/Users/yume/git/TypeFill/example/sample.swift:32:5 - line:33:5] "error()" interface type='(A) -> () throws -> ()' access=internal
      (parameter "self" interface type='A')
      (parameter_list range=[/Users/yume/git/TypeFill/example/sample.swift:32:15 - line:32:16])
      (brace_stmt range=[/Users/yume/git/TypeFill/example/sample.swift:32:25 - line:33:5]))
    (constructor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:3:27 - line:3:27] "init(nibName:bundle:)" interface type='(A.Type) -> (String?, Bundle?) -> A' access=internal override=UIKit.(file).UIViewController.init(nibName:bundle:) @objc dynamic designated
      (parameter "self" interface type='A')
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
              (declref_expr implicit type='String?' decl=sample.(file).A.init(nibName:bundle:).nibNameOrNil function_ref=unapplied)
              (declref_expr implicit type='Bundle?' decl=sample.(file).A.init(nibName:bundle:).nibBundleOrNil function_ref=unapplied))))
        (return_stmt implicit)))
    (constructor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:3:27 - line:3:27] "init(coder:)" interface type='(A.Type) -> (NSCoder) -> A?' access=internal override=UIKit.(file).UIViewController.init(coder:) @objc dynamic required designated failable=Optional
      (parameter "self" interface type='A')
      (parameter_list
        (parameter "coder" apiName=coder type='NSCoder' interface type='NSCoder'))
      (brace_stmt implicit
        (rebind_self_in_constructor_expr implicit type='()'
          (call_expr implicit type='UIViewController?' nothrow arg_labels=coder:
            (dot_syntax_call_expr implicit type='(NSCoder) -> UIViewController?' super nothrow
              (other_constructor_ref_expr implicit type='(UIViewController) -> (NSCoder) -> UIViewController?' decl=UIKit.(file).UIViewController.init(coder:))
              (super_ref_expr implicit type='UIViewController'))
            (tuple_expr implicit type='(coder: NSCoder)' names=coder
              (declref_expr implicit type='NSCoder' decl=sample.(file).A.init(coder:).coder function_ref=unapplied))))
        (return_stmt implicit)))
    (destructor_decl implicit range=[/Users/yume/git/TypeFill/example/sample.swift:3:7 - line:3:7] "deinit" interface type='(A) -> () -> ()' access=internal @objc
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/yume/git/TypeFill/example/sample.swift:3:7 - line:3:7]))))
"""
