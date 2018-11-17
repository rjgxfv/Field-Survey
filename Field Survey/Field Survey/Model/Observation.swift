//
//  Observation.swift
//  Field Survey
//
//  Created by Robert Graman on 11/16/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import Foundation

struct Observation : Codable{
    let classification: Classification
    let title: String
    let description: String
    let date: Date

    init(classification: Classification, title:String, description:String, date:Date){
        self.classification = classification
        self.title = title
        self.description = description
        self.date = date
    }
    
    enum CodingKeys:String, CodingKey{
        case classification
        case title
        case description
        case date
    }
//    init?(classificationName:String, title:String, description:String, date:Date){
//        if let classification = Classification(rawValue: classificationName){
//            self.init(classification: classification, title: title, description: description, date: date)
//        }else{
//            return nil
//        }
//    }
}


struct ObservationSet:Codable{
    var status:String
    var observations:[Observation]
    
    enum CodingKeys:String, CodingKey{
        case status
        case observations
    }
}
