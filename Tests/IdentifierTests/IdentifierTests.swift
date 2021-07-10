/**
 * Identifier
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import XCTest
import Identifier

enum Foo {}

class IdentifierTests: XCTestCase {
    
    func testCodable() throws {
        let id = Identifier<Foo, Int>(rawValue: 42)
        let data = try JSONEncoder().encode(id)
        let decoded = try JSONDecoder().decode(type(of: id), from: data)
        XCTAssertEqual(id, decoded)
    }
    
    func testEquatable() {
        XCTAssertEqual(
            Identifier<Foo, Int>(rawValue: 42),
            Identifier<Foo, Int>(rawValue: 42)
        )
    }
    
    func testHashable() {
        XCTAssertEqual(
            Identifier<Foo, Int>(rawValue: 42).hashValue,
            Identifier<Foo, Int>(rawValue: 42).hashValue
        )
    }
    
    func testCustomStringConvertible() {
        XCTAssertEqual(
            Identifier<Foo, Int>(rawValue: 42).description,
            Identifier<Foo, Int>(rawValue: 42).description
        )
    }
    
    func testExpressibleByStringLiteral() {
        XCTAssertEqual(
            Identifier<Foo, String>(rawValue: "42"),
            "42"
        )
    }
    
    func testExpressibleByIntegerLiteral() {
        XCTAssertEqual(
            Identifier<Foo, Int>(rawValue: 42),
            42
        )
    }
}
