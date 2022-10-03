//
//  TestDownloader.swift
//  EarthquakesTests
//
//  Created by 최승용 on 2022/10/03.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

class TestDownloader: HTTPDataDownloader {
    func httpData(from url: URL) async throws -> Data {
        try await Task.sleep(nanoseconds: UInt64.random(in: 100_000_000...500_000_000))
        return testQuakesData
    }
}
