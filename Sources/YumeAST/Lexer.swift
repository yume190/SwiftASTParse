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

    public final var currentChar: Character? {
        return index < input.endIndex ? input[index] : nil
    }
    
    private final var rest: String {
        return String(self.input[self.index...])
    }
    
    private final var current: TokenType? {
        guard let char = self.currentChar else {
            return nil
        }
        return TokenType(rawValue: char)
    }

    private final func findNextUntil(_ char: Character) -> String {
        var str = ""
        while let current = currentChar, current != char {
            str.append(current)
            advance()
        }
        return str
    }
    
    private final func findNextUntil(chars: [Character]) -> String {
        var str = ""
        
        while let current = currentChar, !chars.contains(current) {
            str.append(current)
            advance()
        }
        
        return str
    }
    
    
//    static private let identifierOpenChar: [Character] = "([{<".map {$0}
//    static private let identifierCloseChar: [Character] = ")]}>".map {$0}
//    static private let identifierChar: [Character] = ".-/:*, ".map {$0} + identifierOpenChar + identifierCloseChar
    static private let identifierChar: [Character] = ".-()/:*<>,+$@".map {$0}
    private final func readIdentifierOrNumber() -> String {
        var str = ""
        var stack: [Character] = []
        while let char = currentChar, char.isAlphanumeric || Self.identifierChar.contains(char) {
            if Character.open.contains(char) {stack.append(char)}
            if Character.close.contains(char) {
                if stack.last?.opposite == char {
                    _ = stack.popLast()
                } else {
                    return str
                }
            }
            str.append(char)
            advance()
        }
        return str
    }

    private final var next: Token? {
        // Skip all spaces until a non-space token
        while let char = currentChar, char.isSpace || char.isNewLine {
            advance()
        }
        // If we hit the end of the input, then we're done
        guard let _ = currentChar else {
            return nil
        }
        
        return self.nextTokenType ?? self.nextStringToken
    }
    
    private final var nextTokenType: Token? {
        switch current {
        case .openParen:
            self.advance()
            return .openParen(type: self.findNextUntil(chars: [" ", ")"]))
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
            return nil
        default:
            return nil
        }
    }
    
    private final var nextStringToken: Token {
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
    
    public final func lex() -> [Token] {
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


// MARK: Decode
extension Lexer {
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
            return self.readIdentifierOrNumber()
//            return self.findNextUntil(chars: [" ", ")"])
        }
    }
    
    func decodeRange() -> String {
        self.advance() // skip =
        defer{ self.advance() } // skip last ]
        return self.findNextUntil("]") + "]"
    }

    func decodeString(current: Character) -> String {
        self.advance() // skip first " or '
        defer{ self.advance() } // skip last " or '
        return self.findNextUntil(current)
    }
}

// MARK: Index move
extension Lexer {
    private final func advance() {
        self.index = self.input.index(after: self.index)
    }
    private final func before() {
        self.index = self.input.index(before: self.index)
    }
}

