//
//  StoryBrain.swift
//  Destini
//
//  Created by Aleksandra Asichka on 2023-02-02.
//

import Foundation

struct StoryBrain {
    
    private let story = [Story(title: "You see a fork in the road..",
                               choice: ["Take a left",
                                        "Take a right"]),
                         Story(title: "You see a tiger.", choice: ["Shout for help.", "Play dead."]),
                         Story(title: "Your find a treasure chest", choice: ["Open it.", "Check for traps"])]
    
    private var step = 0
    
    func getAnswers() -> [String] {
        return story[step].choice
    }
    
    func getTextLabel() -> String {
        return story[step].title
    }
    
    mutating func nextStep(_ userChoice: Int) {
        step = userChoice == 0 ? step + 1 : step + 2
    }
}
