//
//  TodayError.swift
//  Today
//
//  Created by 최승용 on 2022/09/20.
//

import Foundation

enum TodayError: LocalizedError {
    case failedReadingReminders
    case reminderHasNoDate
    
    var errorDescription: String? {
        switch self {
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminders.", comment: "failed reading reminders error description")
        case .reminderHasNoDate:
            return NSLocalizedString("A reminder has no due date.", comment: "reminder has no due date error description")
        }
    }
}
