//
//  Question.swift
//  english
//
//  Created by Alla on 5/5/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import Foundation

class Question {
    let questionImage: String
    let question: String
    let answerA: String
    let answerB : String
    let answerC: String
    let answerD: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choiseA: String, choiseB: String, choiseC: String, choiseD: String, answer: Int) {
        questionImage = image
        question = questionText
        answerA = choiseA
        answerB = choiseB
        answerC = choiseC
        answerD = choiseD
        correctAnswer = answer
        
    }
}
