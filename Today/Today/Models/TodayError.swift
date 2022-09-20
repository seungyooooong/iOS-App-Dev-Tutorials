//
//  TodayError.swift
//  Today
//
//  Created by 최승용 on 2022/09/20.
//

import Foundation

enum TodayError: LocalizedError {
    case failedReadingReminders
    
    var errorDescription: String? {
        switch self {
        case .failedReadingReminders:
            return NSLocalizedString("Failed to read reminders", comment: "failed reading reminders error description")
        }
    }
}
