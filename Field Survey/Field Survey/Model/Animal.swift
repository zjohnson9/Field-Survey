//
//  Animal.swift
//  Field Survey
//
//  Created by Zac Johnson on 11/14/18.
//  Copyright © 2018 ZacJohnson. All rights reserved.
// a

import Foundation

struct FieldSurvey {
    let animal = Animal
    let title: String
    let description: String
    let date: Date
    
    init(animal: Animal, title: String, description: String, date: Date) {
        self.animal = animal
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(animalName: Animal, title: String, description: String, date: Date) {
        if let animal = Animal(rawValue: animalName) {
            self.init(animal: animal, title: title, description: description, date: date)
        }
        else {
            return nil
        }
    }
}
