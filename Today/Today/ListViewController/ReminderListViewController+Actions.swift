//
//  ReminderListViewController+Actions.swift
//  Today
//
//  Created by 최승용 on 2022/08/28.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(with: id)
    }
}
