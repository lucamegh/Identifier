/**
 * Identifier
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

extension Identifier: ExpressibleByStringLiteral where RawValue == String {
    
    public init(stringLiteral value: StaticString) {
        rawValue = "\(value)"
    }
}

extension Identifier: ExpressibleByExtendedGraphemeClusterLiteral where RawValue == String {
    
    public typealias ExtendedGraphemeClusterLiteralType = StaticString
}

extension Identifier: ExpressibleByUnicodeScalarLiteral where RawValue == String {
    
    public typealias UnicodeScalarLiteralType = StaticString
}
