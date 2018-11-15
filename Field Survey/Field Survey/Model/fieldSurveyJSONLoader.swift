//
//  fieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/15/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        var events = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            
            
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            events = FieldSurveyJSONParser().parse(data)
        }
        
        return events
    }
    
}
