//
// Created by jetbrains on 25.09.20.
// Copyright (c) 2020 JetBrains. All rights reserved.
//

import Foundation
//TODO: Change Signature
public func loadFile<T: Decodable>() -> T {
    let data: Data
    if let file = Bundle.main.url(forResource: "conferencesData.json", withExtension: nil) {
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Cannot load \("conferencesData.json"):\n\(error)")
        }
        do {
            let decoder = JSONDecoder()
            let format = DateFormatter()
            format.dateFormat = "yyyy-mm-dd"
            decoder.dateDecodingStrategy = .formatted(format)
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Cannot parse \("conferencesData.json"): \(T.self):\n\(error)")
        }
    }
    fatalError("Cannot find \("conferencesData.json")")
}
extension Date {
    public func dateToString() -> String {
        let format = DateFormatter()
        format.dateFormat = "MMM dd, yyyy"
        return format.string(from: self)
    }
}
