//
//  ReminderStore.swift
//  Today
//
//  Created by 최승용 on 2022/09/20.
//

import Foundation
import EventKit

class ReminderStore {
    static let shared = ReminderStore()
    
    private let ekStore = EKEventStore()
    
    var isAvailable: Bool {
        EKEventStore.authorizationStatus(for: .reminder) == .authorized
    }
    
    func readAll() async throws -> [Reminder] {
        guard isAvailable else {
            throw TodayError.accessDenied
        }
        
        let predicate = ekStore.predicateForReminders(in: nil)
        let ekReminders = try await ekStore.fetchReminders(matching: predicate)
        let reminders: [Reminder] = try ekReminders.compactMap { ekReminder in
            do {
                return try Reminder(with: ekReminder)
            } catch TodayError.reminderHasNoDueDate {
                return nil
            }
        }
        return reminders
    }
}
