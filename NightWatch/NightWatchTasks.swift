//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 31/07/2021.
//

import Foundation

class NightWatchTasks : ObservableObject {
    @Published var nightlyTasks = [
        Task(name: "Check all windows", isComplete: false, lastComplete: nil),
        Task(name: "Check all doors", isComplete: false, lastComplete: nil),
        Task(name: "Check that the safe is locked", isComplete: false, lastComplete: nil),
        Task(name: "Check the mailbox", isComplete: false, lastComplete: nil),
        Task(name: "Inspect security cameras", isComplete: false, lastComplete: nil),
        Task(name: "Clear ice from sidewalks", isComplete: false, lastComplete: nil),
        Task(name: "Document \"strange and unusual\" occurences", isComplete: false, lastComplete: nil)
    ]

    @Published var weeklyTasks = [
        Task(name: "Check inside all vacant rooms", isComplete: false, lastComplete: nil),
        Task(name: "Walk the perimiter of property", isComplete: false, lastComplete: nil)
    ]

    @Published var monthlyTasks = [
        Task(name: "Test security alarm", isComplete: false, lastComplete: nil),
        Task(name: "Test motion detectors", isComplete: false, lastComplete: nil),
        Task(name: "Test smoke alarms", isComplete: false, lastComplete: nil)
    ]
}
