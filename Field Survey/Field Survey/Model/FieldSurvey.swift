//
//  FieldSurvey.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/14/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
//

import Foundation

struct FieldSurvey {
    let classification = Classification
    let title: String
    let description: String
    let date: Date
    
    init(title: String, description: String, date: Date) {
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(classification: Classification, title: String, description: String, date: Date) {
        if let classification = Classification(rawValue: title) {
            self.init(title: title, description: description, date: date)
        }
        else {
            return nil
        }
    }
}
