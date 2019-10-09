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
    var isAlphanumeric: Bool {
        return isalnum(value) != 0 || self == "_"
    }
}
