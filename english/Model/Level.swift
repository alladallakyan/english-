//
//  Level.swift
//  english
//
//  Created by Alla on 5/22/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import Foundation

class Level {
    var name: String!
    var lessons: [Lesson]!
    
    init(name: String, lessons: [Lesson]) {
        self.name = name
        self.lessons = lessons
    }
}

