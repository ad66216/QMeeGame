//
//  GameViewController.swift
//  QMee
//
//  Created by Alex Danner on 7/6/17.
//  Copyright © 2017 Danner Software Solutions. All rights reserved.
//

import UIKit

class GameViewController : UIViewController
{
    @IBOutlet weak var pointsLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var falseButton: UIButton!
    
    var game: QMeeGame = QMeeGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointsLabel.text = "--"
        let starterImage = UIImage(named: "1")
        questionImageView.image = starterImage
        questionLabel.text = "Tap the true button to start a new game!"
        falseButton.isEnabled = false
    }

    @IBAction func trueButtonDidTap(_ sender: Any) {
        
        if pointsLabel.text == "--" {
            game.points = 0
            falseButton.isEnabled = true
        } else {
            game.points += 1
        }
        updateGame()
    }
    
    @IBAction func falseButtonDidTap(_ sender: Any) {
        
        game.points -= 1
        updateGame()
    }
    
    func updateGame() -> Void {
        
        let nextQuestion = game.getNextQuestion()
        let nextImage = game.getQuestionImageName()
        
        questionLabel.text = nextQuestion
        questionImageView.image = UIImage(named: nextImage)
        pointsLabel.text = "\(game.points)"
    }

}
