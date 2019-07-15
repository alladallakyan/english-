//
//  levelsStore.swift
//  english
//
//  Created by Alla on 5/22/19.
//  Copyright © 2019 Alla. All rights reserved.
//

import Foundation

class LevelsStore {
    
    static var levelStore: [Level?] {
        var levelStore = [Level?]()
        levelStore.append(Level(name: "Starter", lessons: LessonsStore.starterLevelLessons))
        levelStore.append(Level(name: "Elementary", lessons: LessonsStore.elementaryLevelLessons))
        levelStore.append(Level(name: "Pre-intermediate", lessons: LessonsStore.preIntermediateLevelLessons))
        levelStore.append(Level(name: "Intermediate", lessons: LessonsStore.intermediateLevelLessons))
        levelStore.append(Level(name: "Upper-intermediate", lessons: LessonsStore.upperIntermediateLevelLessons))
        levelStore.append(Level(name: "Advanced", lessons: LessonsStore.advancedLevelLessons))
        return levelStore
    }
}
