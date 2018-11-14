//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/14/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurvey = [FieldSurvey]()
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
        let root = json as? [String: Any]
            {
            
        }
        
        
        return fieldSurvey
    }
}
