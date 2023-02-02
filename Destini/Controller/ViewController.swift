//
//  ViewController.swift
//  Destini
//
//  Created by Aleksandra Asichka on 2023-02-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let tag = sender.tag
        storyBrain.nextStep(tag)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTextLabel()
        
        choice1Button.setTitle(storyBrain.getAnswers()[0], for: .normal)
        choice2Button.setTitle(storyBrain.getAnswers()[1], for: .normal)
    }
}

