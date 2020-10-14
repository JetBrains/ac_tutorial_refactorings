//
//  ConferenceDetails.swift
//  iOSConferences
//
//  Created by jetbrains on 27.02.20.
//  Copyright © 2020 JetBrains. All rights reserved.
//

import SwiftUI

struct ConferenceDetails: View {
    var conference: Conference
    var body: some View {
        VStack(alignment: .leading) {
            Text(conference.location).padding(.bottom)
            //TODO: Extract Method
            Text("\(conference.start.dateToString()) - \((conference.end?.dateToString())!)").padding(.bottom)
            LinkButton(link: conference.link).padding(.bottom)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
                .padding()
                .navigationBarTitle(conference.name)
    }

    struct LinkButton: View {
        var link = ""
        var body: some View {
            Button(action: {
                UIApplication.shared.open(URL(string: self.link)!)
            }) {
                Text("Go to official website")
            }
        }
    }

    class ConferenceDetails_Previews: PreviewProvider {
        static var previews: some View {
            ConferenceDetails(conference: Conference())
        }
    }
}

