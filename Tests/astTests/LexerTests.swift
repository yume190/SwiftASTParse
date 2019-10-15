import XCTest
@testable
import YumeTool
import class Foundation.Bundle

final class LexerTests: XCTestCase {
    
    func testSample1() throws {
        let ast = "(source_file \"/Users/yume/git/TypeFill/example/sample.swift\")"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.openParen(type: "source_file"))
        XCTAssertEqual(token[1], Token.attribute(type: "\"/Users/yume/git/TypeFill/example/sample.swift\""))
        XCTAssertEqual(token[2], Token.closeParen)
    }

    func testSample2() throws {
        let ast = """
        (import_decl range=[/Users/yume/git/TypeFill/example/sample.swift:1:1 - line:1:8] 'UIKit')
        """
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.openParen(type: "import_decl"))
        XCTAssertEqual(token[1], Token.range(range: "[/Users/yume/git/TypeFill/example/sample.swift:1:1 - line:1:8]"))
        XCTAssertEqual(token[2], Token.attribute(type: "'UIKit'"))
        XCTAssertEqual(token[3], Token.closeParen)
    }

    func testSample3() throws {
        let ast = "(pattern_named type='Int' 'a')"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.openParen(type: "pattern_named"))
        XCTAssertEqual(token[1], Token.keyValue(key: "type", value: "'Int'"))
        XCTAssertEqual(token[2], Token.attribute(type: "'a'"))
        XCTAssertEqual(token[3], Token.closeParen)
    }

    func testSample4() throws {
        let ast = "(class_decl range=[/Users/yume/git/TypeFill/example/sample.swift:3:1 - line:34:1] \"A\" interface type='A.Type' access=internal @objc non-resilient inherits: UIViewController)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.openParen(type: "class_decl"))
        XCTAssertEqual(token[1], Token.range(range: "[/Users/yume/git/TypeFill/example/sample.swift:3:1 - line:34:1]"))
        XCTAssertEqual(token[2], Token.attribute(type: "\"A\""))
        XCTAssertEqual(token[3], Token.attribute(type: "interface"))
        XCTAssertEqual(token[4], Token.keyValue(key: "type", value: "'A.Type'"))
        XCTAssertEqual(token[5], Token.keyValue(key: "access", value: "internal"))
        XCTAssertEqual(token[6], Token.swiftAttribute(type: "objc"))
        XCTAssertEqual(token[7], Token.attribute(type: "non-resilient"))
        XCTAssertEqual(token[8], Token.inherits(class: "UIViewController"))
        XCTAssertEqual(token[9], Token.closeParen)
    }
    
    func testIdentifier1() throws {
        let ast = "names='','')"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.keyValue(key: "names", value: "'',''"))
    }
    
    func testIdentifier2() throws {
        let ast = "type='(UIButton?.Type) -> UIButton?')"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.keyValue(key: "type", value: "'(UIButton?.Type) -> UIButton?'"))
    }
    
    func testIdentifier3() throws {
        let ast = "location=/sample.swift:2:9)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.keyValue(key: "location", value: "/sample.swift:2:9"))
    }
    
    func testIdentifier4() throws {
        let ast = "non-resilient)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.attribute(type: "non-resilient"))
    }
    
    func testOpen() {
        let ast = "(Yume)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.openParen(type: "Yume"))
    }
    
    func testClose() {
        let ast = ")"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.closeParen)
    }
    
    func testRange() {
        let ast = "range=[/Users/yume/git/TypeFill/example/sample.swift:27:17 - line:29:9])"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.range(range: "[/Users/yume/git/TypeFill/example/sample.swift:27:17 - line:29:9]"))
    }
    
    func testSwiftAttribute() {
        let ast = "@objc)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.swiftAttribute(type: "objc"))
    }
    
    func testAttribute1() {
        let ast = "A)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.attribute(type: "A"))
    }
    
    func testAttribute2() {
        let ast = "'A')"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.attribute(type: "'A'"))
    }
    
    func testAttribute3() {
        let ast = "\"A\")"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.attribute(type: "\"A\""))
    }
    
    func testKV1() {
        let ast = "A=UIButton?)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.keyValue(key: "A", value: "UIButton?"))
    }
    
    func testKV2() {
        let ast = "A='UIButton?')"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.keyValue(key: "A", value: "'UIButton?'"))
    }
    
    func testKV3() {
        let ast = "A=\"UIButton?\")"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.keyValue(key: "A", value: "\"UIButton?\""))
    }
    
    func testInherits() {
        let ast = "inherits: UIViewController)"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.inherits(class: "UIViewController"))
    }
    
    func testSkip() {
        let ast = "[abc])"
        let token = Lexer(input: ast).lex()
        XCTAssertEqual(token[0], Token.skip(text: "[abc]"))
    }

    static var allTests = [
        ("testOpen", testOpen),
        ("testClose", testClose),
        ("testRange", testRange),
        ("testSwiftAttribute", testSwiftAttribute),
        ("testAttribute1", testAttribute1),
        ("testAttribute2", testAttribute2),
        ("testAttribute3", testAttribute3),
        ("testKV1", testKV1),
        ("testKV2", testKV2),
        ("testKV3", testKV3),
        ("testInherits", testInherits),
        ("testSkip", testSkip),
        
        ("testSample1", testSample1),
        ("testSample2", testSample2),
        ("testSample3", testSample3),
        ("testSample4", testSample4),
        
        ("testIdentifier1", testIdentifier1),
        ("testIdentifier2", testIdentifier2),
        ("testIdentifier3", testIdentifier3),
        ("testIdentifier4", testIdentifier4),
    ]
}
