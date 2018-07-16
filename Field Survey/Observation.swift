//
//  Observation.swift
//  Field Survey
//
//  Created by Jonah Zukosky on 7/15/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import Foundation

struct Observation: Codable {
    
    var classification: Classification
    var title: String
    var description: String
    var date: Date
    
    static func retrieve() -> [Observation] {
        guard let fileURL = Bundle.main.url(forResource: "field_observations", withExtension: "json") else { return [] }
        
        do {
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
            
            let data = try Data(contentsOf: fileURL)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
            
            return try decoder.decode([Observation].self, from: data)
        } catch let error {
            print(error)
            return []
        }
    }
}

enum Classification: String, Codable {
    case bird
    case reptile
    case amphibian
    case insect
    case fish
    case plant
    case mammal
}
