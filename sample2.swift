import Foundation

class AAA {
    var a: (() -> Void)?
    var b: Int = 0
    var c: String = ""
    
    func abc() {
        weak var _self: AAA? = self
        var __self: AAA? = self
        var sSelf: AAA = self
        self.a = {
            self.b = 11
            _self?.c = "aa"
        }
        
        self.a = { [weak self] in
            self?.b = 22
            self?.c = "bb"
        }
    }
}

