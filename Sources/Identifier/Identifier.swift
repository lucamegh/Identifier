/**
 * Identifier
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

public struct Identifier<Identified, RawValue>: RawRepresentable {
    
    public let rawValue: RawValue

    public init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
}

extension Identifier: Decodable where RawValue: Decodable {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        rawValue = try container.decode(RawValue.self)
    }
}

extension Identifier: Encodable where RawValue: Encodable {
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }
}

extension Identifier: Equatable where RawValue: Equatable {}

extension Identifier: Hashable where RawValue: Hashable {}

extension Identifier: CustomStringConvertible where RawValue: CustomStringConvertible {
    
    public var description: String {
        rawValue.description
    }
}
