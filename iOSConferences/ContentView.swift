//
//  ContentView.swift
//  iOSConferences
//
//  Created by jetbrains on 27.02.20.
//  Copyright © 2020 JetBrains. All rights reserved.
//

import SwiftUI
//TODO: Rename
struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            //TODO: Introduce Variable
            List(loadFile() as [Conference]) { conference in
                NavigationLink(destination:
                ConferenceDetails(conference: conference)) {
                    VStack(alignment: .leading) {
                        Text(conference.name).font(.headline)
                        Text(conference.location).font(.subheadline)
                    }
                }
            }.navigationBarTitle("Conferences")
        })
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
