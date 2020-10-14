//
// Created by jetbrains on 27.02.20.
// Copyright (c) 2020 JetBrains. All rights reserved.
//

import Foundation

class Conference: Codable, Identifiable {

    var name: String
    var location: String
    var start: Date
    var end: Date?
    var link: String

    init() {
        name = "Conference Name"
        location = "Location"
        start = Date()
        end = Date()
        link = "https://www.test.com"
    }

}
