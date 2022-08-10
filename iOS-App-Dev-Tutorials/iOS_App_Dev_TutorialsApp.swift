//
//  iOS_App_Dev_TutorialsApp.swift
//  iOS-App-Dev-Tutorials
//
//  Created by 최승용 on 2022/07/12.
//

import SwiftUI

@main
struct iOS_App_Dev_TutorialsApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums)
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
        }
    }
}
