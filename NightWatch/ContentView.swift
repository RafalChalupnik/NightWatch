//
//  ContentView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 24/07/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusModeOn = false
    @State private var resetAlertShowing = false
    
    var body: some View {
        NavigationView {
            List {
                TaskListSection(headerImageSystemName: "moon.stars", headerText: "Nightly Tasks", tasks: $nightWatchTasks.nightlyTasks, focusModeOn: $focusModeOn)
                
                TaskListSection(headerImageSystemName: "sunset", headerText: "Weekly Tasks", tasks: $nightWatchTasks.weeklyTasks, focusModeOn: $focusModeOn)
                
                TaskListSection(headerImageSystemName: "calendar", headerText: "Monthly Tasks", tasks: $nightWatchTasks.monthlyTasks, focusModeOn: $focusModeOn)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Reset") {
                        self.resetAlertShowing = true
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn, label: {
                        Text("Focus Mode")
                    })
                }
            })
        }
        .alert(isPresented: $resetAlertShowing, content: {
            Alert(title: Text("Reset List"), message: Text("Are you sure?"), primaryButton: .cancel(), secondaryButton: .destructive(Text("Yes, reset it"), action: {
                let refreshedNightWatchTasks = NightWatchTasks()
                self.nightWatchTasks.nightlyTasks = refreshedNightWatchTasks.nightlyTasks
                self.nightWatchTasks.weeklyTasks = refreshedNightWatchTasks.weeklyTasks
                self.nightWatchTasks.monthlyTasks = refreshedNightWatchTasks.monthlyTasks
            }))
        })
    }
}

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    
    var body: some View {
        HStack {
            Image(systemName: symbolSystemName)
            Text(headerText)
        }
        .font(.title3)
    }
}

struct TaskRow: View {
    let task: Task
    
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        ContentView(nightWatchTasks: nightWatchTasks)
    }
}

struct TaskListSection: View {
    let headerImageSystemName: String
    let headerText: String
    @Binding var tasks: [Task]
    @Binding var focusModeOn: Bool
    
    var body: some View {
        Section(header: TaskSectionHeader(symbolSystemName: headerImageSystemName, headerText: headerText)) {
            
            let taskIndices = tasks.indices
            let taskIndexPairs = Array(zip(tasks, taskIndices))
            
            ForEach(taskIndexPairs, id:\.0.id, content: {
                task, taskIndex in
                
                let tasksBinding = $tasks
                let theTaskBinding = tasksBinding[taskIndex]
                
                if (focusModeOn == false || (focusModeOn && task.isComplete == false)) {
                    NavigationLink(
                        destination: DetailsView(task: theTaskBinding),
                        label: {
                            TaskRow(task: task)
                        })
                }
            })
            .onDelete(perform: { indexSet in
                tasks.remove(atOffsets: indexSet)
            })
            .onMove(perform: { indices, newOffset in
                tasks.move(fromOffsets: indices, toOffset: newOffset)
            })
        }
    }
}
