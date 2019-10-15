//
//  Lexer.swift
//  YumeAST
//
//  Created by 林煒峻 on 2019/10/8.
//

import Foundation

public final class Lexer {
    public final let input: String
    public final var index: String.Index

    public init(input: String) {
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
    
    private final var identifier: String {
        var str = ""
        while let char = currentChar, char.isAlphanumeric || Self.identifierChar.contains(char) {
            str.append(char);advance()
        }
        
        return str
    }
    
    static private let identifierChar: [Character] = ".-/*<>,+$@\'\"?".map {$0}
//    static private let identifierChar: [Character] = ".-()/:*<>,+$@\'\"?".map {$0}
    private final var stack: [Character] = []
    private final var complexIdentifier: String {
        defer { self.stack.removeAll() }
        
        var str = ""
        while let char = currentChar {
            
            if stack.last?.opposite == char {
                _ = stack.popLast()
                str.append(char);advance()
                continue
            }
            
            if Character.open.contains(char) {
                stack.append(char)
                str.append(char);advance()
                continue
            }
            
            if self.stack.count == 0 && Character.terminate.contains(char) {
                return str
            }
            
            str.append(char);
            advance()
        }
        return str
    }

    public final var next: Token? {
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
            self.advance() // "("
            return .openParen(type: self.complexIdentifier)
        case .closeParen:
            self.advance()
            return .closeParen
        case .openSquareBracket:
            return .skip(text: self.complexIdentifier)
        case .at:
            self.advance() // "@"
            return .swiftAttribute(type: self.complexIdentifier)
        case .quote:
            fallthrough
        case .doubleQuote:
            return .attribute(type: self.complexIdentifier)
        case .none:
            return nil
        default:
            return nil
        }
    }
    
    private final var nextStringToken: Token {
        let str = self.identifier
        switch str {
        case "range":
            self.advance() // =
            return .range(range: self.complexIdentifier)
        case "inherits":
            self.advance() // ":"
            self.advance() // " "
            return .inherits(class: self.complexIdentifier)
        default:
            if self.currentChar == "=" {
                self.advance() // =
                return .keyValue(key: str, value: self.complexIdentifier)
            }
            return .attribute(type: str)
        }
    }
    
    public final func lex() -> [Token] {
        var toks = [Token]()
        while let tok = self.next {
            if case .attribute(let type) = tok, type == "" {
//                print(self.rest)
//                fatalError()
                return toks
            }
            print(tok)
            toks.append(tok)
        }
        return toks
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
