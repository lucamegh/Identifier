/**
 * Identifier
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

extension Identifier: ExpressibleByIntegerLiteral where RawValue == Int {
    
    public init(integerLiteral value: Int) {
        rawValue = value
    }
}
