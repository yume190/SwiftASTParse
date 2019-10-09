//
//  Util.swift
//  YumeAST
//
//  Created by 林煒峻 on 2019/10/9.
//

import Foundation

extension Character {
    var value: Int32 {
        return Int32(String(self).unicodeScalars.first!.value)
    }
    var isSpace: Bool {
        return isspace(value) != 0
    }
    
    var isNewLine: Bool {
        return self == "\n"
    }
    var isAlphanumeric: Bool {
        return isalnum(value) != 0 || self == "_"
    }
}

extension Character {
    static var open: [Character] {return "([{<".map {$0} }
    static var close: [Character] {return ")]}>".map {$0} }
    var opposite: Character? {
        switch self {
        case "(": return ")"
        case "[": return "]"
        case "{": return "}"
        case "<": return ">"
            
        case ")": return "("
        case "]": return "["
        case "}": return "{"
        case ">": return "<"
            
        default: return nil
        }
    }
}
