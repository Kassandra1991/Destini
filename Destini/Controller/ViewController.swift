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
        guard let currentTitle = sender.titleLabel?.text else {
            return
        }
        storyBrain.nextStep(currentTitle)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTextLabel()
        
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

