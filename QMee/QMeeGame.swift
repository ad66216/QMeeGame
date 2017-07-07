//
//  QuestionBank.swift
//  QMee
//
//  Created by Alex Danner on 7/6/17.
//  Copyright © 2017 Danner Software Solutions. All rights reserved.
//

import Foundation

class QMeeGame
{
    var questions: [String] = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]
    
    var questionImageNames: [String] = ["1", "2", "3", "4", "5", "6"]
    
    var currentQuestionIndex: Int = 0
    
    var points: Int = 0
    
    //  Gets the next question
    func getNextQuestion() -> String {
        
        if currentQuestionIndex == (questions.count - 1)
        {
            currentQuestionIndex = 0
        } else {
            currentQuestionIndex += 1
        }
        //currentQuestionIndex += 1
        
        print(currentQuestionIndex)
        return questions[currentQuestionIndex]
    }
    
    //  Gets the question image name
    func getQuestionImageName() -> String {
        
        return questionImageNames[currentQuestionIndex]
    }
}






























