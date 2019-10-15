//
//  TokenType.swift
//  YumeAST
//
//  Created by 林煒峻 on 2019/10/9.
//

import Foundation

//{} - curly brackets
//[] - square brackets
//() - parentheses

enum TokenType: Character {
    case openParen = "("
    case closeParen = ")"
    
    case openSquareBracket = "["
    case closeSquareBracket = "]"
    
    case openCurlyBracket = "{"
    case closeCurlyBracket = "}"
    
    case whitespace = " "
    
    case quote = "\'"
    case doubleQuote = "\""
    
    case at = "@"
}
