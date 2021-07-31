//
//  Task.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 27/07/2021.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    let name: String
    var isComplete: Bool
    var lastComplete: Date?
}
