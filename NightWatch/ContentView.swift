//
//  ContentView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 24/07/2021.
//

import SwiftUI

let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Check that the safe is locked",
    "Check the mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalks",
    "Document \"strange and unusual\" occurences"
]

let weeklyTasks = [
    "Check inside all vacant rooms",
    "Walk the perimiter of property"
]

let monthlyTasks = [
    "Test security alarm",
    "Test motion detectors",
    "Test smoke alarms"
]

struct ContentView: View {
    var body: some View {
        NavigationView {
        List {
            Section(header: HStack {
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }
            .font(.title3)) {
                ForEach(nightlyTasks, id: \.self, content: {
                    taskName in NavigationLink(taskName, destination: Text(taskName))
                })
            }
            
            Section(header: HStack {
                Image(systemName: "sunset")
                Text("Weekly Tasks")
            }
            .font(.title3)) {
                ForEach(weeklyTasks, id: \.self, content: {
                    taskName in NavigationLink(taskName, destination: Text(taskName))
                })
            }
            
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }
            .font(.title3)) {
                ForEach(monthlyTasks, id: \.self, content: {
                    taskName in NavigationLink(taskName, destination: Text(taskName))
                })
            }}
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
