//
//  QuakeError.swift
//  Earthquakes-iOS
//
//  Created by 최승용 on 2022/09/28.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

enum QuakeError: Error {
    case missingData
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return NSLocalizedString("Found and will discard a quake missing a valid code, magnitude, place, or time.", comment: "")
        }
    }
}
