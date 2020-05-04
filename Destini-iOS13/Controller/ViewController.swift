//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let storyBrain = StoryBrain()
    var story: Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI(next: 0)
    }

    @IBAction func choice1ButtonPressed(_ sender: UIButton) {
        updateUI(next: story!.choice1Destination)
    }
    
    @IBAction func choice2ButtonPressed(_ sender: UIButton) {
        updateUI(next: story!.choice2Destination)
    }
    
    func updateUI(next: Int) {
        story = storyBrain.updateStory(select: next)
        
        storyLabel.text = story!.title
        choice1Button.setTitle(story!.choice1, for: .normal)
        choice2Button.setTitle(story!.choice2, for: .normal)
    }
}

