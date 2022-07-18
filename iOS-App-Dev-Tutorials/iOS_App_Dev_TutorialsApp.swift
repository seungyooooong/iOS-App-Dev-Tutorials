//
//  iOS_App_Dev_TutorialsApp.swift
//  iOS-App-Dev-Tutorials
//
//  Created by 최승용 on 2022/07/12.
//

import SwiftUI

@main
struct iOS_App_Dev_TutorialsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
//                MeetingView()
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
