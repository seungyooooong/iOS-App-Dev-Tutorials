//
//  CacheEntryObject.swift
//  Earthquakes-iOS
//
//  Created by 최승용 on 2022/10/06.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
