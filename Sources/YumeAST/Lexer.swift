//
//  Lexer.swift
//  YumeAST
//
//  Created by 林煒峻 on 2019/10/8.
//

import Foundation

class Lexer {
    let input: String
    var index: String.Index

    init(input: String) {
        self.input = input
        self.index = input.startIndex
    }

    var currentChar: Character? {
        return index < input.endIndex ? input[index] : nil
    }
    
    private var rest: String {
        return String(self.input[self.index...])
    }
    
    var current: TokenType? {
        guard let char = self.currentChar else {
            return nil
        }
        return TokenType(rawValue: char)
    }

    private func advance() {
        self.index = self.input.index(after: self.index)
    }
    private func before() {
        self.index = self.input.index(before: self.index)
    }
    
    func findNextUntil(_ char: Character) -> String {
        var str = ""
        while let current = currentChar, current != char {
            str.append(current)
            advance()
        }
        return str
    }
    
    func findNextUntil(chars: [Character]) -> String {
        var str = ""
        
        while let current = currentChar, !chars.contains(current) {
            str.append(current)
            advance()
        }
        
//        if let current = currentChar {
//            str.append(current)
//            advance()
//
//            if let current = currentChar, !chars.contains(current) {
//                return str + findNextUntil(chars: chars)
//            }
//        }
        
        return str
    }

    func readIdentifierOrNumber() -> String {
        var str = ""
        while let char = currentChar, char.isAlphanumeric || char == "." || char == "-" {
            str.append(char)
            advance()
        }
        return str
    }

    var next: Token? {
        // Skip all spaces until a non-space token
        while let char = currentChar, char.isSpace {
            advance()
        }
        // If we hit the end of the input, then we're done
        guard let _ = currentChar else {
            return nil
        }

        switch current {
        case .openParen:
            self.advance()
            return .openParen(type: self.findNextUntil(" "))
        case .closeParen:
            self.advance()
            return .closeParen
        case .openSquareBracket:
            self.advance()
            defer {self.advance()}
            return .skip(text: self.findNextUntil(TokenType.closeSquareBracket.rawValue) + "]")
        case .at:
            self.advance()
            return .swiftAttribute(type: self.readIdentifierOrNumber())
        case .quote:
            return .attribute(type: self.decodeString(current: TokenType.quote.rawValue))
        case .doubleQuote:
            return .attribute(type: self.decodeString(current: TokenType.doubleQuote.rawValue))
        case .none:
            break
        default:
            break
        }
        
        let str = readIdentifierOrNumber()
        switch str {
        case "range":
            return .range(range: self.decodeRange())
        case "inherits":
            return .inherits(class: self.decodeInheritsType())
            
        default:
            if self.currentChar == "=" {
                return .keyValue(key: str, value: self.decodeKeyValue())
            }
            return .attribute(type: str)
        }
    }
    
    /// inherits: UIViewController
    func decodeInheritsType() -> String {
        self.advance() // skip ':'
        self.advance() // skip ' '
        return self.readIdentifierOrNumber()
    }
    
    func decodeKeyValue() -> String {
        self.advance() // skip =
        
        switch self.current {
        case .quote:
            return self.decodeString(current: TokenType.quote.rawValue)
        case .doubleQuote:
            return self.decodeString(current: TokenType.doubleQuote.rawValue)
        case .openSquareBracket:
            return "[\(self.decodeString(current: TokenType.closeSquareBracket.rawValue))]"
        default:
            return self.findNextUntil(" ")
//            return self.findNextUntil(chars: [" ", ")", "\n"])
        }
    }
    
    func decodeRange() -> String {
        self.advance() // skip =
        let result = self.findNextUntil("]")
        self.advance() // skip last ]
        return result + "]"
    }

    func decodeString(current: Character) -> String {
        self.advance() // skip first "
        let result = self.findNextUntil(current)
        self.advance() // skip last "
        return result
    }
    
    func lex() -> [Token] {
        var toks = [Token]()
        while let tok = self.next {
            if case .attribute(let type) = tok, type == "" {
//                print(self.rest)
                fatalError()
            }
            print(tok)
            toks.append(tok)
        }
        return toks
    }
}


