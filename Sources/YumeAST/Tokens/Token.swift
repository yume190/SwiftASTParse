//
//  Token.swift
//  YumeAST
//
//  Created by 林煒峻 on 2019/10/8.
//

import Foundation

enum Token {
    /// (
    case openParen(type: DECL)
    
    //// (import_decl
    ////case decl(type: DECL)
    
    /// )
    case closeParen
    
    /// range=[/Users/yume/git/TypeFill/example/sample.swift:27:17 - line:29:9]
    case range(range: String)
    
    /// like @objc
    case swiftAttribute(type: String)
    
    case attribute(type: String)
    
    case keyValue(key: String, value: String)
    
    case inherits(class: String)
    
    case skip(text: String)
}
