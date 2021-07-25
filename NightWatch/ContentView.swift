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
                    HStack {
                        Text(Image(systemName: "moon.stars"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("Nightly Tasks")
                            .underline()
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(.yellow)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    }
                    Text("Check all windows")
                    Text("Check all doors")
                    Text("Check that the safe is locked")
                    Text("Check the mailbox")
                    Text("Inspect security cameras")
                    Text("Clear ice from sidewalks")
                    Text("Document \"strange and unusual\" occurences")
                    HStack {
                        Text(Image(systemName: "sunset"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("Weekly Tasks")
                            .underline()
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(.yellow)
                            .padding(.top)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    }
                    HStack {
                        Text(Image(systemName: "calendar"))
                            .foregroundColor(.yellow)
                            .font(.title3)
                            .fontWeight(.heavy)
                        Text("Monthly Tasks")
                            .underline()
                            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                            .fontWeight(.heavy)
                            .foregroundColor(.yellow)
                            .padding(.top)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                    }
                }
                .foregroundColor(.gray)
                Spacer()
            }
            .padding([.top, .leading])
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
