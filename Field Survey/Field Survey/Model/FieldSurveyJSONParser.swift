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
    
        func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurvey = [FieldSurvey]()
            FieldSurveyJSONParser.dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let events = root["observations"] as? [Any] {
                for event in events {
                    if let event = events as? [String: String] {
                        if let classificationName = event["classification"],
                        if let titleName = event["title"],
                        if let descriptionName = event["description"],
                        if let dateString = event["date"],
                            let date = FieldSurveyJSONParser.dateFormatter.date(from: dateString) {
                            if let fieldSurvey = FieldSurvey(animalName: classificationName, title: titleName, description: descriptionName, date: date!) {
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
