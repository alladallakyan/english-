//
//  questionBank.swift
//  english
//
//  Created by Alla on 5/5/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import Foundation

class QuestionBank1 {
    var list = [Question]()
    
    init() {
        list.append(Question(image: "ball", questionText: "This is ...", choiseA: "ball", choiseB: "baloon", choiseC: "box", choiseD: "bird", answer: 1))
        list.append(Question(image: "car", questionText: "The car is ...", choiseA: "red", choiseB: "white", choiseC: "black", choiseD: "yellow", answer: 3))
        list.append(Question(image: "yought", questionText: "the yought is ...", choiseA: "on the mountains", choiseB: "in the sea", choiseC: "bla-bla", choiseD: "bi-bi", answer: 2))
    }
}
