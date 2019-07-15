//
//  GrammarLevel.swift
//  english
//
//  Created by Alla on 6/5/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import Foundation

class GrammarLevel {
    var name: String!
    var quizType: [QuizType]!
    
    init(name: String, quizType: [QuizType]) {
        self.name = name
        self.quizType = quizType
    }
}
