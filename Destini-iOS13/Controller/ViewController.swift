//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(storyId: 0)
    }
    
    func updateUI(storyId : Int) {
        let storyElements = storyBrain.nextStory(id: storyId)
        storyLabel.text = storyElements["text"] as? String
        choice1Button.setTitle(storyElements["choice1"] as? String, for: .normal)
        choice2Button.setTitle(storyElements["choice2"] as? String, for: .normal)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
            updateUI(storyId: storyBrain.choiceMade(1))
        } else if sender == choice2Button {
            updateUI(storyId: storyBrain.choiceMade(2))
        } else {
            updateUI(storyId: storyBrain.choiceMade(0))
        }
    }
    
    


}

