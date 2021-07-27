//
//  DetailsView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 27/07/2021.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    
    var body: some View {
        VStack {
            Text(taskName)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test Task")
    }
}
