//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/14/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurvey = [FieldSurvey]()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    if let observation = observation as? [String: String] {
                        if let classification = observation["classification"],
                        if let title = observation["title"],
                        if let description = observation["description"],
                        if let date = observation["date"],
                        let date = dateFormatter.date(from: dateString) {
                            if let  = fieldSurvey = FieldSurvey(classification: classification, title: title, description: description, date: date) {
                                fieldSurvey.append(FieldSurvey)
                            }
                        }
                    }
                }
            }
        }
        
        
        return fieldSurvey
    }
}
