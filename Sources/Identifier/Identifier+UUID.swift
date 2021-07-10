/**
 * Identifier
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import Foundation

public extension Identifier where RawValue == UUID {
    
    init() {
        self.init(rawValue: UUID())
    }
}
