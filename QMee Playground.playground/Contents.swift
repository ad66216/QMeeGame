//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class QuestionBank
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
    
    //function to get the next question
    func getNextQuestion() -> String {
        
        if currentQuestionIndex <= questions.count + 1 {
            currentQuestionIndex += 1
        }
        else {
            currentQuestionIndex = 0
        }
        return questions[currentQuestionIndex]
    }
    
    //gets the question image name
    func getQuestionImageName() -> String {
        
        return questionImageNames[currentQuestionIndex]
    }
}

var questionBank = QuestionBank()

questionBank.getNextQuestion()
questionBank.getQuestionImageName()
questionBank.questions.count

questionBank.getNextQuestion()
questionBank.getQuestionImageName()
questionBank.questions.count

questionBank.getNextQuestion()
questionBank.getQuestionImageName()
questionBank.questions.count

questionBank.getNextQuestion()
questionBank.getQuestionImageName()
questionBank.questions.count

questionBank.getNextQuestion()
questionBank.getQuestionImageName()
questionBank.questions.count

//questionBank.getNextQuestion()
//questionBank.getQuestionImageName()
//questionBank.questions.count
