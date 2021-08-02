//
//  DetailsView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 27/07/2021.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "map")
                Text("Placeholder for motel floor plan")
            }
            Text(task.name)
            
            if (verticalSizeClass == .regular) {
                Divider()
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer quis vestibulum nisi, non sollicitudin nunc. Donec nec ex placerat, ultrices lorem a, posuere massa. Nunc varius neque eget tellus fringilla porttitor in malesuada sem. Aliquam eu magna non nisi laoreet rutrum. Phasellus in facilisis enim, quis ornare magna. In hac habitasse platea dictumst.")
            }
            
            Divider()
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailsView(task: .constant(Task(name: "Test task", isComplete: false, lastComplete: nil)))
            DetailsView(task: .constant(Task(name: "Test task", isComplete: false, lastComplete: nil)))
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/667.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/375.0/*@END_MENU_TOKEN@*/))
        }
    }
}
