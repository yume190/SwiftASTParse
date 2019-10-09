//import AST
//import Parser
//import Source
//
//class MyVisitor : ASTVisitor {
//  func visit(_ ifStmt: IfStatement) throws -> Bool {
//    // visit this if statement
//
//    print(ifStmt)
//    return true
//  }
//}
//
//let filePath = "/Users/yume/git/TypeFill/example/sample.swift"
//do {
//    let sourceFile: SourceFile = try SourceReader.read(at: filePath)
//    let parser = Parser(source: sourceFile)
//    let topLevelDecl = try parser.parse()
//
////    for stmt in topLevelDecl.statements {
////    // consume statement
////        print(stmt)
////    }
//
//
//    let myVisitor = MyVisitor()
//
//    try myVisitor.traverse(topLevelDecl)
//} catch {
//  // handle errors
//    print(error)
//}
let ast1 = "(source_file \"/Users/yume/git/TypeFill/example/sample.swift\")"
let ast2 = """
(import_decl range=[/Users/yume/git/TypeFill/example/sample.swift:1:1 - line:1:8] 'UIKit')
"""

let ast3 = "(pattern_named type='Int' 'a')"

let ast4 = "(class_decl range=[/Users/yume/git/TypeFill/example/sample.swift:3:1 - line:34:1] \"A\" interface type='A.Type' access=internal @objc non-resilient inherits: UIViewController)"
let toks = Lexer(input: sample).lex()
//print(toks)
//for tok in toks {
//    print(tok)
//}
