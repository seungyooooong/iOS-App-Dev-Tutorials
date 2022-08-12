//
//  ErrorWrapper.swift
//  iOS-App-Dev-Tutorials
//
//  Created by 최승용 on 2022/08/12.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}
