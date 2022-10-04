//
//  QuakesProvider.swift
//  EarthquakesTests
//
//  Created by 최승용 on 2022/10/04.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

@MainActor
class QuakesProvider: ObservableObject {

    @Published var quakes: [Quake] = []

    let client: QuakeClient

    func fetchQuakes() async throws {
        let latestQuakes = try await client.quakes
        self.quakes = latestQuakes
    }

    func deleteQuakes(atOffsets offsets: IndexSet) {
        quakes.remove(atOffsets: offsets)
    }

    init(client: QuakeClient = QuakeClient()) {
        self.client = client
    }
}
