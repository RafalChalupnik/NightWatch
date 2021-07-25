//
//  ContentView.swift
//  NightWatch
//
//  Created by Rafał Chałupnik on 24/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Nightly Tasks")
                    Text("Weekly Tasks")
                    Text("Monthly Tasks")
                }
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
