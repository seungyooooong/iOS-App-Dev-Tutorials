//
//  QuakeDetail.swift
//  Earthquakes-iOS
//
//  Created by 최승용 on 2022/10/07.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct QuakeDetail: View {
    var quake: Quake
    var body: some View {
        VStack {
            QuakeMagnitude(quake: quake)
            Text(quake.place)
                .font(.title3)
                .bold()
            Text("\(quake.time.formatted())")
                .foregroundStyle(Color.secondary)
            if let location = quake.location {
                Text("Latitude:  \(location.latitude.formatted(.number.precision(.fractionLength(3))))")
                Text("Longitude: \(location.longitude.formatted(.number.precision(.fractionLength(3))))")
                
            }
        }
    }
}

struct QuakeDetail_Previes: PreviewProvider {
    static var previews: some View {
        QuakeDetail(quake: Quake.preview)
    }
}
