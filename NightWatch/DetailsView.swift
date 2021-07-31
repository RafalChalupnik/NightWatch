//
//  DetailsView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 27/07/2021.
//

import SwiftUI

struct DetailsView: View {
    let task: Task
    
    var body: some View {
        VStack {
            Text(task.name)
            Text("Placeholder for task description")
            Text("Placeholder for mark complete button")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Task(name: "Test task", isComplete: false, lastComplete: nil))
    }
}
