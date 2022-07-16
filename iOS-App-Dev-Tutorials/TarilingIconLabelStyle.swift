//
//  TarilingIconLabelStyle.swift
//  iOS-App-Dev-Tutorials
//
//  Created by 최승용 on 2022/07/16.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
            
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
