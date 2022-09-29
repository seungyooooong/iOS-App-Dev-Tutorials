//
//  EarthquakesTests.swift
//  EarthquakesTests
//
//  Created by 최승용 on 2022/09/29.
//  Copyright © 2022 Apple. All rights reserved.
//

import XCTest
@testable import Earthquakes

class EarthquakesTests: XCTestCase {
    func testGeoJSONDecoderDecodesQuake() throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .millisecondsSince1970
        let quake = try decoder.decode(Quake.self, from: testFeature_nc73649170)
        
        XCTAssertEqual(quake.code, "73649170")
        
        let expectedSeconds = TimeInterval(1636129710550) / 1000
        let decodeSeconds = quake.time.timeIntervalSince1970
        
        XCTAssertEqual(expectedSeconds, decodeSeconds, accuracy: 0.00001)
    }
}
