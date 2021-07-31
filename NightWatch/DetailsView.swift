//
//  DetailsView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 27/07/2021.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: .constant(Task(name: "Test task", isComplete: false, lastComplete: nil)))
    }
}
